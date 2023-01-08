package kr.go.mfds.model;

import kr.go.mfds.dto.QnaBoardDTO;

import java.util.List;

public interface QnaBoardDAO {
    public List<QnaBoardDTO> qnaList() throws Exception;
    public List<QnaBoardDTO> qnaDetail(int pos) throws Exception;
    public QnaBoardDTO questDetail(int qno) throws Exception;
    public void qnaUpdate(QnaBoardDTO dto) throws Exception;
    public void questInsert(QnaBoardDTO dto) throws Exception;
    public void ansInsert(QnaBoardDTO dto) throws Exception;
    public void qnaDel(int qno) throws Exception;
}
