package com.lh.pojo;


public class RecommendTable {

  private long recommendId;
  private long userId;
  private long medicinalDietId;
  private long recommendBase;


  public long getRecommendId() {
    return recommendId;
  }

  public void setRecommendId(long recommendId) {
    this.recommendId = recommendId;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public long getMedicinalDietId() {
    return medicinalDietId;
  }

  public void setMedicinalDietId(long medicinalDietId) {
    this.medicinalDietId = medicinalDietId;
  }


  public long getRecommendBase() {
    return recommendBase;
  }

  public void setRecommendBase(long recommendBase) {
    this.recommendBase = recommendBase;
  }

}
