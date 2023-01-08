package kr.go.mfds.dto;

import lombok.Data;

@Data
public class QnaBoardDTO {
    private int qno;
    private String title;
    private String content;
    private String author;
    private String resdate;
    private int lev;
    private int pos;
}
