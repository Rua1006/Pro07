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
    public void usersInsert(UsersDTO dto) throws Exception {
        sqlSession.insert("users.usersInsert", dto);
    }

    @Override
    public UsersDTO signIn(UsersDTO mdto) throws Exception {
        return sqlSession.selectOne("users.signIn", mdto);
    }

    @Override
    public UsersDTO loginCheck(UsersDTO mdto) throws Exception {
        sqlSession.selectOne("users.loginCheck", mdto);
        return mdto;
    }

    @Override
    public UsersDTO login(UsersDTO mdto) throws Exception {
        return sqlSession.selectOne("users.login", mdto);
    }

    @Override
    public void usersUpdate(UsersDTO mdto) throws Exception {
        sqlSession.update("users.usersUpdate", mdto);
    }

    @Override
    public void usersDelete(String id) throws Exception {
        sqlSession.delete("users.usersDelete", id);
    }
}
