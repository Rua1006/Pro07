package kr.go.mfds.model;

import kr.go.mfds.dto.SampleDTO;

import java.util.List;

public interface SampleDAO {
	public List<SampleDTO> sampleList() throws Exception;
	public SampleDTO getSample(String id) throws Exception;
	public void addSample(SampleDTO sample) throws Exception;
}
