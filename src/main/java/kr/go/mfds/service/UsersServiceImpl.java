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
    public void usersInsert(UsersDTO users) throws Exception {
        usersDao.usersInsert(users);
    }

    @Override
    public UsersDTO signIn(UsersDTO users) throws Exception {
        return usersDao.signIn(users);
    }

    @Override
    public UsersDTO loginCheck(UsersDTO users) throws Exception {
        return usersDao.loginCheck(users);
    }

    @Override
    public boolean login(HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        boolean loginSuccess = false;
        UsersDTO users = new UsersDTO();

        users.setId(request.getParameter("id"));
        users.setPw(request.getParameter("pw"));

        UsersDTO login = usersDao.login(users);

        loginSuccess = pwdEncoder.matches(users.getPw(), login.getPw());
        if(login != null && loginSuccess==true){
            session.setAttribute("users", login);
            session.setAttribute("sid", login.getId());
            loginSuccess = true;
        }
        return loginSuccess;
    }

    @Override
    public void usersUpdate(UsersDTO users) throws Exception {
        usersDao.usersUpdate(users);
    }

    @Override
    public void usersDelete(String id) throws Exception {
        usersDao.usersDelete(id);
    }
}
