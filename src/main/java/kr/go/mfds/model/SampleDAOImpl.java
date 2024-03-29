package kr.go.mfds.model;

import kr.go.mfds.dto.SampleDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SampleDAOImpl implements SampleDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<SampleDTO> sampleList() throws Exception {
		return sqlSession.selectList("sample.sampleList");
	}

	@Override
	public SampleDTO getSample(String id) throws Exception {
		return sqlSession.selectOne("sample.getSample", id);
	}

	@Override
	public SampleDTO addSample(SampleDTO sample) throws Exception {
		sqlSession.insert("sample.addSample", sample);
        return sample;
    }

	@Override
	public void updateSample(SampleDTO sampleDTO) throws Exception {
		sqlSession.update("sample.updateSample", sampleDTO);
	}

	@Override
	public void deleteSample(String id) throws Exception {
		sqlSession.delete("sample.deleteSample", id);
	}
}
