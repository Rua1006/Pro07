package kr.go.mfds.controller;

import kr.go.mfds.dto.NoticeDTO;
import kr.go.mfds.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/notice/")
public class NoticeController {

    @Autowired
    NoticeService noticeService;
//  공지사항 목록
    @GetMapping("list.do")
    public String noticeList(Model model) throws Exception {
        List<NoticeDTO> noticeList = noticeService.noticeList();
        model.addAttribute("noticeList", noticeList);
        return "notice/noticeList";
    }
//  공지사항 자세히보기
    @GetMapping("detail.do")
    public String getNotice(@RequestParam("no") int no, Model model) throws Exception {
        NoticeDTO noti = noticeService.getNotice(no);
        model.addAttribute("noti", noti);
        return "notice/noticeDetail";
    }
//  공지사항 작성페이지 이동
    @GetMapping("insert.do")
    public String noticeInsert(Model model) throws Exception {
        return "notice/noticeInsert";
    }
//  공지사항 작성
    @PostMapping("insert.do")
    public String noticeInsert(HttpServletRequest request, Model model) throws Exception {
        NoticeDTO noti = new NoticeDTO();
        noti.setTitle(request.getParameter("title"));
        noti.setContent(request.getParameter("content"));
        noticeService.noticeInsert(noti);
        return "redirect:list.do";
    }
//  공지사항 수정페이지
    @GetMapping("update.do")
    public String updateForm(HttpServletRequest request, Model model) throws Exception {
        int no = Integer.parseInt(request.getParameter("no"));
        NoticeDTO noti = noticeService.getNotice(no);
        model.addAttribute("noti", noti);
        return "notice/noticeUpdate";
    }
//  공지사항 수정하기
    @PostMapping("update.do")
    public String noticeUpdate(HttpServletRequest request, Model model) throws Exception {
        int no = Integer.parseInt(request.getParameter("no"));
        NoticeDTO noti = new NoticeDTO();
        noti.setNo(no);
        noti.setTitle(request.getParameter("title"));
        noti.setContent(request.getParameter("content"));
        noticeService.noticeUpdate(noti);
        return "redirect:list.do";
    }
//  공지사항 삭제
    @GetMapping("delete.do")
    public String noticeDelete(HttpServletRequest request, Model model) throws Exception {
        int no = Integer.parseInt(request.getParameter("no"));
        noticeService.noticeDelete(no);
        return "redirect:list.do";
    }
}
