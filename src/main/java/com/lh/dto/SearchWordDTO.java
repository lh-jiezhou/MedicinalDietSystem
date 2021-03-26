package com.lh.dto;

public class SearchWordDTO {
    private String words;
    private Integer pageNum;

    public String getWords() {
        return words;
    }
    public void setWords(String words) {
        this.words = words;
    }

    public Integer getPageNum() {
        return pageNum;
    }
    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    @Override
    public String toString() {
        return "SearchWordDTO{" +
                "words='" + words + '\'' +
                ", pageNum=" + pageNum +
                '}';
    }
}
