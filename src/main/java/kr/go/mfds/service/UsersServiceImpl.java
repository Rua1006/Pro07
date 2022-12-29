package kr.go.mfds.service;

import kr.go.mfds.dto.UsersDTO;
import kr.go.mfds.model.UsersDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    UsersDAO usersDao;

    @Inject
    BCryptPasswordEncoder pwdEncoder;

    @Override
    public List<UsersDTO> usersList() throws Exception {
        return usersDao.usersList();
    }

    @Override
    public UsersDTO getUsers(String id) throws Exception {
        return usersDao.getUsers(id);
    }

    @Override
    public void usersInsert(UsersDTO dto) throws Exception {
        usersDao.usersInsert(dto);
    }

    @Override
    public UsersDTO signIn(UsersDTO mdto) throws Exception {
        return usersDao.signIn(mdto);
    }

    @Override
    public UsersDTO loginCheck(UsersDTO mdto) throws Exception {
        return usersDao.loginCheck(mdto);
    }

    @Override
    public boolean login(HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        boolean loginSuccess = false;
        UsersDTO mdto = new UsersDTO();

        mdto.setId(request.getParameter("id"));
        mdto.setPw(request.getParameter("pw"));

        UsersDTO login = usersDao.login(mdto);

        loginSuccess =  pwdEncoder.matches(mdto.getPw(), login.getPw());
        if(login != null && loginSuccess==true) {
            session.setAttribute("users", login);
            session.setAttribute("sid", login.getId());
            loginSuccess = true;
        }
        return loginSuccess;
    }

    @Override
    public void usersUpdate(UsersDTO mdto) throws Exception {
        usersDao.usersUpdate(mdto);
    }

    @Override
    public void usersDelete(String id) throws Exception {
        usersDao.usersDelete(id);
    }
}
