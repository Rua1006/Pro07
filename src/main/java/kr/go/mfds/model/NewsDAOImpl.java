package kr.go.mfds.model;

import kr.go.mfds.dto.NewsDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NewsDAOImpl implements NewsDAO {

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<NewsDTO> newsList() throws Exception {
        return sqlSession.selectList("news.newsList");
    }

    @Override
    public NewsDTO getNews(int no) throws Exception {
        return sqlSession.selectOne("news.getNews", no);
    }

    @Override
    public void newsInsert(NewsDTO news) throws Exception {
        sqlSession.insert("news.newsInsert", news);
    }

    @Override
    public void newsUpdate(NewsDTO news) throws Exception {
        sqlSession.update("news.newsUpdate", news);
    }

    @Override
    public void newsDelete(int no) throws Exception {
        sqlSession.delete("news.newsDelete", no);
    }
}
