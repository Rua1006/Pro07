package kr.go.mfds.service;

import kr.go.mfds.dto.UsersDTO;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface UsersService {
    public List<UsersDTO> usersList() throws Exception;
    public UsersDTO getUsers(String id) throws Exception;
    public void usersInsert(UsersDTO dto) throws Exception;
    public UsersDTO signIn(UsersDTO mdto) throws Exception;
    public UsersDTO loginCheck(UsersDTO mdto) throws Exception;
    public boolean login(HttpServletRequest request) throws Exception;
    public void usersUpdate(UsersDTO mdto) throws Exception;
    public void usersDelete(String id) throws Exception;
}
