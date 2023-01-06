package kr.go.mfds;

import kr.go.mfds.dto.SampleDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RestDAO {
    @Autowired
    SqlSession sqlSession;

    public List<SampleDTO> sampleList() throws Exception {
        return sqlSession.selectList("sample.sampleList");
    }

    public SampleDTO getSample(String id) throws Exception {
        return sqlSession.selectOne("sample.getSample", id);
    }

    public void addSample(SampleDTO sample) throws Exception {
        sqlSession.insert("sample.addSample", sample);
    }

    public void updateSample(SampleDTO sample) throws Exception {
        sqlSession.update("sample.updateSample", sample);
    }

    public void deleteSample(String id) throws Exception {
        sqlSession.delete("sample.deleteSample", id);
    }
}
