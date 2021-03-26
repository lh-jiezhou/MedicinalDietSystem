package com.lh.pojo;


public class UserSearchTable {

  private long searchRecordId;
  private long userId;
  private String searchContent;


  public long getSearchRecordId() {
    return searchRecordId;
  }

  public void setSearchRecordId(long searchRecordId) {
    this.searchRecordId = searchRecordId;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public String getSearchContent() {
    return searchContent;
  }

  public void setSearchContent(String searchContent) {
    this.searchContent = searchContent;
  }

}
