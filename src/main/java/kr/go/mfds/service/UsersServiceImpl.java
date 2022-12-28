package kr.go.mfds.service;

import kr.go.mfds.dto.UsersDTO;
import kr.go.mfds.model.UsersDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
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
        return null;
    }

    @Override
    public void usersInsert(UsersDTO users) throws Exception {

    }

    @Override
    public UsersDTO signIn(UsersDTO users) throws Exception {
        return null;
    }

    @Override
    public UsersDTO loginCheck(UsersDTO users) throws Exception {
        return null;
    }

    @Override
    public boolean login(HttpServletRequest request) throws Exception {
        return false;
    }

    @Override
    public void usersUpdate(UsersDTO users) throws Exception {

    }

    @Override
    public void usersDelete(String id) throws Exception {

    }
}
