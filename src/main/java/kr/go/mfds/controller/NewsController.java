package kr.go.mfds.controller;

import kr.go.mfds.dto.NewsDTO;
import kr.go.mfds.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/news/")
public class NewsController {

    @Autowired
    NewsService newsService;

    @GetMapping("list.do")
    public String newsList(Model model) throws Exception {
        List<NewsDTO> newsList = newsService.newsList();
        model.addAttribute("newsList", newsList);
        return "news/newsList";
    }

    @GetMapping("detail.do")
    public String getNews(@RequestParam("no") int no, Model model) throws Exception {
        NewsDTO news = newsService.getNews(no);
        model.addAttribute("news", news);
        return "news/newsDetail";
    }

    @GetMapping("insert.do")
    public String newsInsert(Model model) throws Exception {
        return "news/newsInsert";
    }

    @PostMapping("insert.do")
    public String newsInsert(HttpServletRequest request, Model model) throws Exception {
        NewsDTO news = new NewsDTO();
        news.setTitle(request.getParameter("title"));
        news.setContent(request.getParameter("content"));
        newsService.newsInsert(news);
        return "redirect:list.do";
    }

    @GetMapping("update.do")
    public String updateForm(HttpServletRequest request, Model model) throws Exception {
        int no = Integer.parseInt(request.getParameter("no"));
        NewsDTO news = newsService.getNews(no);
        model.addAttribute("news", news);
        return "news/newsUpdate";
    }

    @PostMapping("update.do")
    public String newsUpdate(HttpServletRequest request, Model model) throws Exception {
        int no = Integer.parseInt(request.getParameter("no"));
        NewsDTO news = new NewsDTO();
        news.setNo(no);
        news.setTitle(request.getParameter("title"));
        news.setContent(request.getParameter("content"));
        newsService.newsUpdate(news);
        return "redirect:list.do";
    }

    @GetMapping("delete.do")
    public String newsDelete(HttpServletRequest request, Model model) throws Exception {
        int no = Integer.parseInt(request.getParameter("no"));
        newsService.newsDelete(no);
        return "redirect:list.do";
    }

    @RequestMapping(value="imageUpload.do", method = RequestMethod.POST)
    public void imageUpload(HttpServletRequest request,
    HttpServletResponse response, MultipartHttpServletRequest multiFile, @RequestParam MultipartFile upload) throws Exception{
        // 랜덤 문자 생성
        UUID uid = UUID.randomUUID();

        OutputStream out = null;
        PrintWriter printWriter = null;

        //인코딩
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        try{
            //파일 이름 가져오기
            String fileName = upload.getOriginalFilename();
            byte[] bytes = upload.getBytes();

            //이미지 경로 생성
            String path = "D:\\kbs\\pro07\\pro07\\src\\main\\webapp\\resources\\upload"+"ckImage/";	// 이미지 경로 설정(폴더 자동 생성)
            String ckUploadPath = path + uid + "_" + fileName;
            File folder = new File(path);
            //해당 디렉토리 확인
            if(!folder.exists()){
                try{
                    folder.mkdirs(); // 폴더 생성
                }catch(Exception se){
                    se.getStackTrace();
                }
            }

            OutputStream os = Files.newOutputStream(Paths.get(ckUploadPath));
            out.write(bytes);
            out.flush(); // outputStram에 저장된 데이터를 전송하고 초기화

            String callback = request.getParameter("CKEditorFuncNum");
            printWriter = response.getWriter();
            String fileUrl = "/free/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName; // 작성화면

            // 업로드시 메시지 출력
            printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
            printWriter.flush();

        }catch(IOException e){
            e.printStackTrace();
        } finally {
            try {
                if(out != null) { out.close(); }
                if(printWriter != null) { printWriter.close(); }
            } catch(IOException e) { e.printStackTrace(); }
        }
        return;
    }

    //ckeditor를 이용한 서버에 전송된 이미지 뿌려주기
    @RequestMapping(value="ckImgSubmit.do")
    public void ckSubmit(@RequestParam(value="uid") String uid
            , @RequestParam(value="fileName") String fileName
            , HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

        //서버에 저장된 이미지 경로
        String path = "D:\\kbs\\pro07\\pro07\\src\\main\\webapp\\resources\\upload"+"ckImage/";	// 저장된 이미지 경로
        String sDirPath = path + uid + "_" + fileName;

        File imgFile = new File(sDirPath);

        //사진 이미지 찾지 못하는 경우 예외처리로 빈 이미지 파일을 설정한다.
        if(imgFile.isFile()){
            byte[] buf = new byte[1024];
            int readByte = 0;
            int length = 0;
            byte[] imgBuf = null;

            FileInputStream fileInputStream = null;
            ByteArrayOutputStream outputStream = null;
            ServletOutputStream out = null;

            try{
                InputStream is = Files.newInputStream(Paths.get(String.valueOf(imgFile)));
                outputStream = new ByteArrayOutputStream();
                out = response.getOutputStream();

                while((readByte = fileInputStream.read(buf)) != -1){
                    outputStream.write(buf, 0, readByte);
                }

                imgBuf = outputStream.toByteArray();
                length = imgBuf.length;
                out.write(imgBuf, 0, length);
                out.flush();

            }catch(IOException e){
                e.printStackTrace();
            }finally {
                outputStream.close();
                fileInputStream.close();
                out.close();
            }
        }
    }
}
