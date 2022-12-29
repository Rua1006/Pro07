package kr.go.mfds.controller;

import kr.go.mfds.dto.NoticeDTO;
import kr.go.mfds.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/notice/")
public class NoticeController {

    @Autowired
    NoticeService noticeService;

    @GetMapping("list.do")
    public String noticeList(Model model) throws Exception{
        List<NoticeDTO> noticeList = noticeService.noticeList();
        model.addAttribute("noticeList", noticeList);
        return "notice/list";
    }

    @GetMapping("detail.do")
    public String getNotice(@RequestParam("no") int no, Model model) throws Exception {
        NoticeDTO noti = noticeService.getNotice(no);
        model.addAttribute("noti", noti);
        return "notice/noticeDetail";
    }
}
