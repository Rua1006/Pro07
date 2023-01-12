package kr.go.mfds.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/research/")
public class ResearchController {

    @GetMapping("solution.do")
    public String getSolution(Model model) throws Exception {
        return "research/solution";
    }
}
