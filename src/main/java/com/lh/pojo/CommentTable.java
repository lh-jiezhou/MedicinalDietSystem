package com.lh.pojo;


public class CommentTable {

  private long commentId;
  private long userId;
  private UserTable userTable;
  private long medicinalId;
  private java.sql.Timestamp commentDate;
  private String commentCont;
  private String commentImage;
  private long commentStar;


  public long getCommentId() {
    return commentId;
  }

  public void setCommentId(long commentId) {
    this.commentId = commentId;
  }

  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }

  public UserTable getUserTable() {
    return userTable;
  }

  public void setUserTable(UserTable userTable) {
    this.userTable = userTable;
  }

  public long getMedicinalId() {
    return medicinalId;
  }

  public void setMedicinalId(long medicinalId) {
    this.medicinalId = medicinalId;
  }


  public java.sql.Timestamp getCommentDate() {
    return commentDate;
  }

  public void setCommentDate(java.sql.Timestamp commentDate) {
    this.commentDate = commentDate;
  }


  public String getCommentCont() {
    return commentCont;
  }

  public void setCommentCont(String commentCont) {
    this.commentCont = commentCont;
  }


  public String getCommentImage() {
    return commentImage;
  }

  public void setCommentImage(String commentImage) {
    this.commentImage = commentImage;
  }


  public long getCommentStar() {
    return commentStar;
  }

  public void setCommentStar(long commentStar) {
    this.commentStar = commentStar;
  }

}
