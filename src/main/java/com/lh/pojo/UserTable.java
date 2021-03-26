package com.lh.pojo;


public class UserTable {

  private long userId;
  private String userNo;
  private String userPassword;
  private String userNickname;
  private String userJob;
  private String userSex;
  private long userAge;
  private String userAim;
  private String userImage;
  private String userSign;


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public String getUserNo() {
    return userNo;
  }

  public void setUserNo(String userNo) {
    this.userNo = userNo;
  }


  public String getUserPassword() {
    return userPassword;
  }

  public void setUserPassword(String userPassword) {
    this.userPassword = userPassword;
  }


  public String getUserNickname() {
    return userNickname;
  }

  public void setUserNickname(String userNickname) {
    this.userNickname = userNickname;
  }


  public String getUserJob() {
    return userJob;
  }

  public void setUserJob(String userJob) {
    this.userJob = userJob;
  }


  public String getUserSex() {
    return userSex;
  }

  public void setUserSex(String userSex) {
    this.userSex = userSex;
  }


  public long getUserAge() {
    return userAge;
  }

  public void setUserAge(long userAge) {
    this.userAge = userAge;
  }


  public String getUserAim() {
    return userAim;
  }

  public void setUserAim(String userAim) {
    this.userAim = userAim;
  }


  public String getUserImage() {
    return userImage;
  }

  public void setUserImage(String userImage) {
    this.userImage = userImage;
  }

  public String getUserSign() {
    return userSign;
  }

  public void setUserSign(String userSign) {
    this.userSign = userSign;
  }

  @Override
  public String toString() {
    return "UserTable{" +
            "userId=" + userId +
            ", userNo='" + userNo + '\'' +
            ", userPassword='" + userPassword + '\'' +
            ", userNickname='" + userNickname + '\'' +
            ", userJob='" + userJob + '\'' +
            ", userSex='" + userSex + '\'' +
            ", userAge=" + userAge +
            ", userAim='" + userAim + '\'' +
            ", userImage='" + userImage + '\'' +
            ", userSign='" + userSign + '\'' +
            '}';
  }
}
