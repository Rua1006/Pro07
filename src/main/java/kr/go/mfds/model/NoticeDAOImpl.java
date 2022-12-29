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

    @Override
    public NoticeDTO getNotice(int no) throws Exception {
        return sqlSession.selectOne("notice.getNotice", no);
    }

    @Override
    public void noticeInsert(NoticeDTO noti) throws Exception {
        sqlSession.insert("notice.noticeInsert", noti);
    }

    @Override
    public void noticeUpdate(NoticeDTO noti) throws Exception {
        sqlSession.update("notice.noticeUpdate", noti);
    }

    @Override
    public void noticeDelete(int no) throws Exception {
        sqlSession.delete("notice.noticeDelete", no);
    }
}
