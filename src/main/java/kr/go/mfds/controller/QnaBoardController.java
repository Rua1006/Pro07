package kr.go.mfds.controller;

import kr.go.mfds.dto.QnaBoardDTO;
import kr.go.mfds.service.QnaBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/qna/*")
public class QnaBoardController {

    @Autowired
    QnaBoardService qnaBoardService;

    @GetMapping("list.do")
    public String qnaList(Model model) throws Exception {
        List<QnaBoardDTO> qnaboardlist = qnaBoardService.qnaList();
        model.addAttribute("qnaList",qnaboardlist);
        return "qna/qnaList";
    }

    @GetMapping("detail.do")
    public String qnaDetail(@RequestParam("pos") int pos, Model model) throws Exception {
        List<QnaBoardDTO> qnaBoardList = qnaBoardService.qnaDetail(pos);
        model.addAttribute("qnaList", qnaBoardList);
        return "qna/qnaDetail";
    }

    @GetMapping("insert.do")
    public String qnaInsert(@RequestParam("lev") int lev, @RequestParam("pos") int pos, Model model) throws Exception {
        model.addAttribute("lev", lev);
        model.addAttribute("pos", pos);
        return "qna/qnaInsert";
    }

    @PostMapping("insert.do")
    public String qnaInsert(QnaBoardDTO dto, Model model) throws Exception {
        if(dto.getLev()==0){
            qnaBoardService.questInsert(dto);
        }else{
            qnaBoardService.ansInsert(dto);
        }
        return "redirect:list.do";
    }

    @GetMapping("update.do")
    public String updateForm(@RequestParam("qno") int qno, Model model) throws Exception {
        QnaBoardDTO dto = qnaBoardService.questDetail(qno);
        model.addAttribute("dto", dto);
        return "qna/qnaUpdate";
    }

    @PostMapping("update.do")
    public String qnaUpdate(QnaBoardDTO dto, Model model) throws Exception {
        qnaBoardService.qnaUpdate(dto);
        return "redirect:list.do";
    }

    @GetMapping("delete.do")
    public String qnaDelete(@RequestParam("qno") int qno) throws Exception {
        qnaBoardService.qnaDel(qno);
        return "redirect:list.do";
    }
}
