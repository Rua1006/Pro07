package kr.go.mfds.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.go.mfds.dto.UsersDTO;
import kr.go.mfds.service.UsersService;

@Controller
@RequestMapping("/users/")
public class UsersController {
    private static final Logger logger = LoggerFactory.getLogger(UsersController.class);

    @Autowired
    UsersService usersService;

    @Autowired
    HttpSession session;

    @Inject
    BCryptPasswordEncoder pwdEncoder;

    @Bean
    BCryptPasswordEncoder passwordEncoder() {

        return new BCryptPasswordEncoder();
    }

    @RequestMapping(value="list.do", method = RequestMethod.GET)
    public String usersList(Model model) throws Exception {
        List<UsersDTO> usersList = usersService.usersList();
        model.addAttribute("usersList", usersList);
        return "users/usersList";
    }
    // 관리자 회원 정보 보기
    @RequestMapping(value="getUsers.do", method = RequestMethod.GET)
    public String getMember(@RequestParam("id") String id, Model model) throws Exception {
        UsersDTO users = usersService.getUsers(id);
        model.addAttribute("users", users);
        return "users/usersDetail";
    }
    // 일반회원 정보보기
    @RequestMapping(value="read.do", method = RequestMethod.GET)
    public String usersRead(Model model, HttpServletRequest request) throws Exception {
        String id = (String) session.getAttribute("sid");
        UsersDTO users = usersService.getUsers(id);
        model.addAttribute("users", users);
        return "users/usersRead";
    }
    // 회원 가입 - 약관 동의 페이지 로딩
    @GetMapping("agree.do")
    public String getAgree(Model model) throws Exception {
        return "users/agree";
    }
    // 회원 가입 - 회원가입폼 페이지 로딩
    @GetMapping("join.do")
    public String getJoin(Model model) throws Exception {
        return "users/usersInsert";
    }
    // 회원 가입 - Ajax로 아이디 중복 체크
    @RequestMapping(value="idCheck.do", method=RequestMethod.POST)
    public void idCheck(HttpServletResponse response, HttpServletRequest request, Model model) throws Exception {
        String id = request.getParameter("id");
        boolean result = false;
        UsersDTO dto = new UsersDTO();
        dto = usersService.getUsers(id);

        if(dto!=null){	//
            result = false;
        } else {
            result = true;
        }
        JSONObject json = new JSONObject();
        json.put("result", result);
        PrintWriter out = response.getWriter();
        out.println(json.toString());
    }
    // 회원 가입 - 회원 가입 처리
    @RequestMapping(value="insert.do", method = RequestMethod.POST)
    public String usersWrite(UsersDTO users, Model model) throws Exception {
        //비밀번호 암호화
        String userpw = users.getPw();
        String pwd = pwdEncoder.encode(userpw);
        users.setPw(pwd);
        usersService.usersInsert(users);
        return "redirect:/";
    }
    // 로그인 폼 로딩
    @RequestMapping("loginForm.do")
    public String usersLoginForm(Model model) throws Exception {
        return "users/loginForm";
    }
    // 로그인 	- 컨트롤러에서 세션 처리
    @RequestMapping(value="signin.do", method = RequestMethod.POST)
    public String usersSignin(@RequestParam String id, @RequestParam String pw, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
        session.invalidate();
        UsersDTO mdto = new UsersDTO();
        mdto.setPw(pw);
        mdto.setId(id);
        UsersDTO login = usersService.signIn(mdto);
        boolean loginSuccess = pwdEncoder.matches(mdto.getPw(), login.getPw());
        if(loginSuccess && login!=null) {
            session.setAttribute("member", login);
            session.setAttribute("sid", id);
            return "redirect:/";
        } else {
            return "redirect:loginForm.do";
        }
    }
    // 로그인 - Service에서 세션 처리
    @RequestMapping(value="login.do", method = RequestMethod.POST)
    public String usersLogin(UsersDTO mdto, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
        boolean loginSuccess = usersService.login(req);
        if(loginSuccess) {
            return "home";
        } else {
            return "redirect:loginForm.do";
        }
    }
    // Ajax를 이용하는 방법
    @RequestMapping(value="loginCheck.do", method = RequestMethod.POST)
    public String usersLoginCtrl(UsersDTO mdto, RedirectAttributes rttr) throws Exception {
        session.getAttribute("users");
        UsersDTO users = usersService.loginCheck(mdto);
        boolean mat = pwdEncoder.matches(mdto.getPw(), users.getPw());
        if(mat==true && users!=null) {
            logger.info("로그인 성공");
            session.setAttribute("users", users);
            session.setAttribute("sid", users.getId());
            return "redirect:/";
        } else {
            logger.info("로그인 실패");
            session.setAttribute("users", null);
            rttr.addFlashAttribute("msg", false);
            return "redirect:loginForm.do";
        }
    }
    // 회원 정보 변경
    @RequestMapping(value="update.do", method = RequestMethod.POST)
    public String usersUpdate(UsersDTO mdto, Model model) throws Exception {
        String pwd = pwdEncoder.encode(mdto.getPw());
        mdto.setPw(pwd);
        usersService.usersUpdate(mdto);
        return "redirect:/";
    }
    // 회원 탈퇴
    @RequestMapping(value="delete.do", method = RequestMethod.GET)
    public String usersDelete(@RequestParam String id, Model model, HttpSession session) throws Exception {
        usersService.usersDelete(id);
        session.invalidate();
        return "redirect:/";
    }
    // 로그아웃
    @RequestMapping("logout.do")
    public String usersLogout(HttpSession session) throws Exception {
        session.invalidate();
        return "redirect:/";
    }
}