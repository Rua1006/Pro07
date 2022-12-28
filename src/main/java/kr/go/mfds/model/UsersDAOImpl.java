package kr.go.mfds.model;

import kr.go.mfds.dto.UsersDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Repository
public class UsersDAOImpl implements UsersDAO{

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<UsersDTO> usersList() throws Exception {
        return sqlSession.selectList("users.usersList");
    }

    @Override
    public UsersDTO getUsers(String id) throws Exception {
        return sqlSession.selectOne("users.getUsers", id);
    }

    @Override
    public void usersInsert(UsersDTO users) throws Exception {
        sqlSession.insert("users.usersInsert", users);
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
