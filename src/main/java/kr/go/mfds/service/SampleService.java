package kr.go.mfds.service;

import kr.go.mfds.dto.SampleDTO;

import java.util.List;

public interface SampleService {
	public List<SampleDTO> sampleList() throws Exception;
	public SampleDTO getSample(String id) throws Exception;
	public SampleDTO addSample(SampleDTO sampleDTO) throws Exception;
	public void updateSample(SampleDTO sampleDTO) throws Exception;
	public void deleteSample(String id) throws Exception;
}
