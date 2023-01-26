package kr.go.mfds.service;

import kr.go.mfds.dto.SampleDTO;
import kr.go.mfds.model.SampleDAO;
import org.apache.ibatis.javassist.tools.rmi.Sample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SampleServiceImpl implements SampleService {

	@Autowired
	SampleDAO sampleDao;
	
	@Override
	public List<SampleDTO> sampleList() throws Exception {
		return sampleDao.sampleList();
	}

	@Override
	public SampleDTO getSample(String id) throws Exception {
		return sampleDao.getSample(id);
	}

	@Override
	public SampleDTO addSample(SampleDTO sample) throws Exception {
		return sampleDao.addSample(sample);
	}

	@Override
	public void updateSample(SampleDTO sampleDTO) throws Exception {
		sampleDao.updateSample(sampleDTO);
	}

	@Override
	public void deleteSample(String id) throws Exception {
		sampleDao.deleteSample(id);
	}
}
