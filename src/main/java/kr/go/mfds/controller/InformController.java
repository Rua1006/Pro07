package kr.go.mfds.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/inform/")
public class InformController {

    @GetMapping("vision.do")
    public String getVision(Model model) throws Exception {
        return "inform/vision";
    }

    @GetMapping("history.do")
    public String getHistory(Model model) throws Exception {
        return "inform/history";
    }

    @GetMapping("depart.do")
    public String getDepart(Model model) throws Exception {
        return "inform/depart";
    }
}
