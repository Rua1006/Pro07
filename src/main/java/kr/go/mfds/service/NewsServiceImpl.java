package kr.go.mfds.service;

import kr.go.mfds.dto.NewsDTO;
import kr.go.mfds.model.NewsDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    NewsDAO newsDao;

    @Override
    public List<NewsDTO> newsList() throws Exception {
        return newsDao.newsList();
    }

    @Override
    public NewsDTO getNews(int no) throws Exception {
        return newsDao.getNews(no);
    }

    @Override
    public void newsInsert(NewsDTO news) throws Exception {
        newsDao.newsInsert(news);
    }

    @Override
    public void newsUpdate(NewsDTO news) throws Exception {
        newsDao.newsUpdate(news);
    }

    @Override
    public void newsDelete(int no) throws Exception {
        newsDao.newsDelete(no);
    }
}
