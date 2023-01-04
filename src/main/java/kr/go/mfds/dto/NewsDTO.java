package kr.go.mfds.dto;

import lombok.Data;

@Data
public class NewsDTO {
    private int no;
    private String title;
    private String content;
    private String resdate;
    private String author;
}
