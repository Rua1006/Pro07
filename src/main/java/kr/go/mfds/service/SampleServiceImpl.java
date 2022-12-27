package kr.go.mfds.service;

import kr.go.mfds.dto.SampleDTO;
import kr.go.mfds.model.SampleDAO;
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
	public void addSample(SampleDTO sample) throws Exception {
		sampleDao.addSample(sample);
	}
}
