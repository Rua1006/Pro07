package kr.go.mfds.model;

import kr.go.mfds.dto.QnaBoardDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QnaBoardDAOImpl implements QnaBoardDAO {

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<QnaBoardDTO> qnaList() throws Exception {
        return sqlSession.selectList("qnaBoard.qnaList");
    }

    @Override
    public List<QnaBoardDTO> qnaDetail(int pos) throws Exception {
        return sqlSession.selectList("qnaBoard.qnaDetail", pos);
    }

    @Override
    public QnaBoardDTO questDetail(int qno) throws Exception {
        return sqlSession.selectOne("qnaBoard.questDetail", qno);
    }

    @Override
    public void qnaUpdate(QnaBoardDTO dto) throws Exception {
        sqlSession.update("qnaBoard.qnaUpdate", dto);
    }

    @Override
    public void questInsert(QnaBoardDTO dto) throws Exception {
        sqlSession.insert("qnaBoard.questInsert",dto);
    }

    @Override
    public void ansInsert(QnaBoardDTO dto) throws Exception {
        sqlSession.insert("qnaBoard.ansInsert",dto);
    }

    @Override
    public void qnaDel(int qno) throws Exception {
        sqlSession.delete("qnaBoard.qnaDel",qno);
    }
}
