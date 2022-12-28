package kr.go.mfds.model;

import kr.go.mfds.dto.NoticeDTO;

import java.util.List;

public interface NoticeDAO {
    public List<NoticeDTO> noticeList() throws Exception;
}
