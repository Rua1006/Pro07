package kr.go.mfds.service;

import kr.go.mfds.dto.NoticeDTO;
import kr.go.mfds.model.NoticeDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService{

    @Autowired
    NoticeDAO noticeDao;

    @Override
    public List<NoticeDTO> noticeList() throws Exception {
        return noticeDao.noticeList();
    }
}
