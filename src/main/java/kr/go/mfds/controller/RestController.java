package kr.go.mfds.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.go.mfds.RestService;
import org.apache.maven.model.Model;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.go.mfds.dto.SampleDTO;

@Controller
@RequestMapping("/api/")
public class RestController {

	private final Logger log = LoggerFactory.getLogger(RestController.class);
	
	@Autowired
	RestService restService;
	
	@GetMapping("api1")
	public String api1(Model model) {
		return "api";
	}
	
	@ResponseBody
	@GetMapping("test1")	//일반 String으로 반환
	public String test1(HttpServletRequest request) {
		log.info("URL TEST : "+request.getRequestURL());
		log.info("URI TEST : "+request.getRequestURI());
		log.info("JAVA CLASS : "+this.getClass().getName());
		return "application request url";
	}
	
	@ResponseBody			//JSON 형태로 반환 - Map
	@GetMapping("test2/{id}/{pw}")
	public Map<String, String> test2(@PathVariable("id") String id,@PathVariable("pw") String pw) {
		Map<String, String> res = new HashMap<>();
		res.put(id, pw);
		
		return res;
	}
	
	@ResponseBody			//JSON 형태로 반환 - List
	@GetMapping("test3/{id}")
	public List<String> test3(@PathVariable("id") String id) {
		List<String> lst = new ArrayList<String>();
		for(int i=0;i<5;i++) {
			lst.add(id+i);
		}
		return lst;
	}
	
	@ResponseBody			//Service에서 처리하여 JSON 형태로 반환 - Map
	@GetMapping("test4/{id}/{pw}")
	public Map<String, String> test4(@PathVariable("id") String id,@PathVariable("pw") String pw) {
		Map<String, String> res = restService.getTest1(id, pw);
		return res;
	}
	
	@ResponseBody			//Service에서 처리하여 JSON 형태로 반환 - List
	@GetMapping("test5/{id}")
	public List<String> test5(@PathVariable("id") String id) {
		List<String> lst = restService.getTest2(id);
		return lst;
	}
	
	@ResponseBody			//Service에서 처리하여 JSON 형태로 반환 - List
	@GetMapping("list")
	public List<SampleDTO> test6() throws Exception {
		List<SampleDTO> lst = restService.sampleList();
		return lst;
	}
	
	@ResponseBody			//Service에서 처리하여 JSON 형태로 반환 - Object
	@GetMapping("user/{id}")
	public SampleDTO test7(@PathVariable("id") String id) throws Exception {
		SampleDTO user = restService.getSample(id);
		return user;
	}
	
	// 샘플 추가
	@PostMapping("add")
	@ResponseBody
	public SampleDTO addSample(@ModelAttribute("sample") SampleDTO sample) throws Exception {
		restService.addSample(sample);
		return sample;
	}
	
	// 샘플 수정
	// uri:localhost:8097/update/{id}	
	@PutMapping("update")
	@ResponseBody
	public String updateSample(@ModelAttribute("sample") SampleDTO sample) throws Exception {
		restService.updateSample(sample);
		return "수정 성공";
	}

	// 샘플 삭제
	// uri:localhost:8097/delete/{id}
	@DeleteMapping("delete/{id}")
	@ResponseBody
	public String deleteSample(@PathVariable String id) throws Exception {
		restService.deleteSample(id);
		return "탈퇴 성공";
	}
}
