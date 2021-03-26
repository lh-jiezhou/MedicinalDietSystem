package com.lh.pojo;


public class ApplicationCateTable {

  private long applicationId;
  private String applicationName;


  public long getApplicationId() {
    return applicationId;
  }

  public void setApplicationId(long applicationId) {
    this.applicationId = applicationId;
  }


  public String getApplicationName() {
    return applicationName;
  }

  public void setApplicationName(String applicationName) {
    this.applicationName = applicationName;
  }

  @Override
  public String toString() {
    return "ApplicationCateTable{" +
            "applicationId=" + applicationId +
            ", applicationName='" + applicationName + '\'' +
            '}';
  }
}
