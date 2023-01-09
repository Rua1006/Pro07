package kr.go.mfds.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/data/")
public class DataController {

    @GetMapping("organization.do")
    public String getOrganization(Model model) throws Exception {
        return "data/organization";
    }

}
