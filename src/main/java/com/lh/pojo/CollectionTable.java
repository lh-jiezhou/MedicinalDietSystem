package com.lh.pojo;


public class CollectionTable {

  private long collectionId;
  private long userId;
  private long medicinalDietId;
  private java.sql.Timestamp collectionDate;


  public long getCollectionId() {
    return collectionId;
  }

  public void setCollectionId(long collectionId) {
    this.collectionId = collectionId;
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


  public java.sql.Timestamp getCollectionDate() {
    return collectionDate;
  }

  public void setCollectionDate(java.sql.Timestamp collectionDate) {
    this.collectionDate = collectionDate;
  }

}
