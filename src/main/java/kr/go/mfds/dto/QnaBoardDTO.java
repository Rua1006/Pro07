package kr.go.mfds.dto;

import lombok.Data;

@Data
public class QnaBoardDTO {
    private int no;
    private String title;
    private String content;
    private String author;
    private String resdate;
    private int lev;
    private String sec;
}
