package kr.go.mfds.controller;

import kr.go.mfds.dto.SampleDTO;
import kr.go.mfds.service.SampleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/sample/")
public class SampleController {
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
		SampleDTO sample = sampleService.getSample(id);
		model.addAttribute("sample", sample);
		return "sample/getSample";
	}

	@ResponseBody
	@GetMapping("test2/{id}/{pw}")
	public Map<String, String> test2(@PathVariable("id") String id, @PathVariable("pw") String pw)  throws Exception {
		Map<String, String> res = new HashMap<>();
		res.put(id, pw);

		return res;
	}

	@ResponseBody
	@GetMapping("test3/{id}")
	public List<String> test3(@PathVariable("id") String id){
		List<String> lst = new ArrayList<String>();
		for (int i=0; i<5; i++){
			lst.add(id+i);
		}
		return lst;
	}
}
