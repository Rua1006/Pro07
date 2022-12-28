package kr.go.mfds.service;

import kr.go.mfds.dto.NoticeDTO;

import java.util.List;

public interface NoticeService {
    public List<NoticeDTO> noticeList() throws Exception;

}
