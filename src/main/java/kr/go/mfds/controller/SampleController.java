package kr.go.mfds.controller;

import kr.go.mfds.dto.SampleDTO;
import kr.go.mfds.service.SampleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/sample/")
public class SampleController {
	private static final Logger log = LoggerFactory.getLogger(SampleController.class);	
	@Autowired
	SampleService sampleService;
	
	@GetMapping("list")
	public String sampleList(Model model) throws Exception {
		List<SampleDTO> sampleLst = sampleService.sampleList();
		model.addAttribute("sampleList", sampleLst);
		return "sample/list";
	}
	
	@GetMapping("getSample")
	public String getSample(@RequestParam String id, Model model) throws Exception {
		log.info("id : "+id);
		SampleDTO sample = sampleService.getSample(id);
		model.addAttribute("sample", sample);
		return "sample/getSample";
	}
}
