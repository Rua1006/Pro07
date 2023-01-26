package kr.go.mfds.model;

import kr.go.mfds.dto.SampleDTO;

import java.util.List;

public interface SampleDAO {
	public List<SampleDTO> sampleList() throws Exception;
	public SampleDTO getSample(String id) throws Exception;
	public SampleDTO addSample(SampleDTO sample) throws Exception;
	public void updateSample(SampleDTO sampleDTO) throws Exception;
	public void deleteSample(String id) throws Exception;
}
