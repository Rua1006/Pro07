package kr.go.mfds.model;

import kr.go.mfds.dto.NoticeDTO;

import java.util.List;

public interface NoticeDAO {
    public List<NoticeDTO> noticeList() throws Exception;
    public NoticeDTO getNotice(int no) throws Exception;
    public void noticeInsert(NoticeDTO noti) throws Exception;
    public void noticeUpdate(NoticeDTO noti) throws Exception;
    public void noticeDelete(int no) throws Exception;
}
