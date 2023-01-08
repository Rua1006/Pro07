package kr.go.mfds.service;

import kr.go.mfds.dto.QnaBoardDTO;
import kr.go.mfds.model.QnaBoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QnaBoardServiceImpl implements QnaBoardService  {

    @Autowired
    QnaBoardDAO qnaBoardDAO;

    @Override
    public List<QnaBoardDTO> qnaList() throws Exception {
        return qnaBoardDAO.qnaList();
    }

    @Override
    public List<QnaBoardDTO> qnaDetail(int pos) throws Exception {
        return qnaBoardDAO.qnaDetail(pos);
    }

    @Override
    public QnaBoardDTO questDetail(int qno) throws Exception {
        return qnaBoardDAO.questDetail(qno);
    }

    @Override
    public void qnaUpdate(QnaBoardDTO dto) throws Exception {
        qnaBoardDAO.qnaUpdate(dto);
    }

    @Override
    public void questInsert(QnaBoardDTO dto) throws Exception {
        qnaBoardDAO.questInsert(dto);
    }

    @Override
    public void ansInsert(QnaBoardDTO dto) throws Exception {
        qnaBoardDAO.ansInsert(dto);
    }

    @Override
    public void qnaDel(int qno) throws Exception {
        qnaBoardDAO.qnaDel(qno);
    }
}
