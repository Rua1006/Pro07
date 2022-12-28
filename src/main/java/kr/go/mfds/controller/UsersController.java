package kr.go.mfds.controller;

import kr.go.mfds.dto.UsersDTO;
import kr.go.mfds.service.UsersService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/users/")
public class UsersController {

    @Autowired
    UsersService usersService;

    @Inject
    BCryptPasswordEncoder pwdEncoder;

    @Autowired
    HttpSession session;

//  회원목록 조회
    @RequestMapping(value = "list.do", method = RequestMethod.GET)
    public String usersList(Model model) throws Exception {
        List<UsersDTO> usersList = usersService.usersList();
        model.addAttribute("usersList", usersList);
        return "users/usersList";
    }
//  관리자회원정보
    @RequestMapping(value = "getUsers.do", method = RequestMethod.GET)
    public String getUsers(@RequestParam String id, Model model) throws Exception {
        UsersDTO users = usersService.getUsers(id);
        model.addAttribute("users", users);
        return "users/usersDetail";
    }
//  일반회원정보
    @RequestMapping(value = "userRead.do", method = RequestMethod.GET)
    public String userRead(Model model, HttpServletRequest request) throws Exception {
        String id = (String) session.getAttribute("sid");
        UsersDTO users = usersService.getUsers(id);
        model.addAttribute("users", users);
        return "users/userRead";
    }
//  회원가입 - 약관페이지
    @GetMapping("agree.do")
    public String getAgree(Model model) throws Exception {
        return "users/agree";
    }
//  회원가입 - 가입페이지
    @GetMapping("join.do")
    public String getJoin(Model model) throws Exception {
        return "users/usersInsert";
    }
//  회원가입 Ajax
    @RequestMapping(value="idCheck.do", method = RequestMethod.POST)
    public void idCheck(HttpServletResponse response, HttpServletRequest request, Model model) throws Exception {
        String id = request.getParameter("id");
        boolean result = false;
        UsersDTO users = new UsersDTO();
        users = usersService.getUsers(id);

        if(users!=null){
            result = false;
        } else {
            result = true;
        }
        JSONObject json = new JSONObject();
        json.put("result", result);
        PrintWriter out = response.getWriter();
        out.println(json.toString());
    }
//  회원가입
    @RequestMapping(value = "insert.do", method = RequestMethod.POST)
    public String usersWrite(UsersDTO users, Model model) throws Exception {
        String pw = users.getPw();
        String pwd = pwdEncoder.encode(pw);
        users.setPw(pwd);
        usersService.usersInsert(users);
        return "redirect:/";
    }
//  로그인 페이지
    @RequestMapping("loginForm.do")
    public String usersLoginForm(Model model) throws Exception {
        return "users/loginForm";
    }
//  로그인
    @RequestMapping(value = "signin.do", method = RequestMethod.POST)
    public String usersSignin(@RequestParam String id, @RequestParam String pw, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
        session.invalidate();
        UsersDTO users = new UsersDTO();
        users.setPw(pw);
        users.setId(id);
        UsersDTO login = usersService.signIn(users);
        boolean loginSuccess = pwdEncoder.matches(users.getPw(), login.getPw());
        if(loginSuccess && login!=null){
            session.setAttribute("users", login);
            session.setAttribute("sid", id);
            return "redirect:/";
        } else {
            return "redirect:loginForm.do";
        }
    }
}
