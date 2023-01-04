package kr.go.mfds.service;

import kr.go.mfds.dto.NewsDTO;

import java.util.List;

public interface NewsService {
    public List<NewsDTO> newsList() throws Exception;
    public NewsDTO getNews(int no) throws Exception;
    public void newsInsert(NewsDTO news) throws Exception;
    public void newsUpdate(NewsDTO news) throws Exception;
    public void newsDelete(int no) throws Exception;
}
