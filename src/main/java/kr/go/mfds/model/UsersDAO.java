package kr.go.mfds.model;

import kr.go.mfds.dto.UsersDTO;

import java.util.List;

public interface UsersDAO {
    public List<UsersDTO> usersList() throws Exception;
    public UsersDTO getUsers(String id) throws Exception;
    public void usersInsert(UsersDTO dto) throws Exception;
    public UsersDTO signIn(UsersDTO mdto) throws Exception;
    public UsersDTO loginCheck(UsersDTO mdto) throws Exception;
    public UsersDTO login(UsersDTO mdto) throws Exception;
    public void usersUpdate(UsersDTO mdto) throws Exception;
    public void usersDelete(String id) throws Exception;
}
