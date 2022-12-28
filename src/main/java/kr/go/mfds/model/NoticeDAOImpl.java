package kr.go.mfds.model;

import kr.go.mfds.dto.NoticeDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NoticeDAOImpl implements NoticeDAO{

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<NoticeDTO> noticeList() throws Exception {
        return sqlSession.selectList("notice.noticeList");
    }
}
