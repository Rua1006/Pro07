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

    @Override
    public NoticeDTO getNotice(int no) throws Exception {
        return noticeDao.getNotice(no);
    }

    @Override
    public void noticeInsert(NoticeDTO noti) throws Exception {
        noticeDao.noticeInsert(noti);
    }

    @Override
    public void noticeUpdate(NoticeDTO noti) throws Exception {
        noticeDao.noticeUpdate(noti);
    }

    @Override
    public void noticeDelete(int no) throws Exception {

    }
}
