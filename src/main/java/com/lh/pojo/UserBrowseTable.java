package com.lh.pojo;


public class UserBrowseTable {

  private long browseRecordId;
  private long userId;
  private long goodsId;
  private long goodsCategory;


  public long getBrowseRecordId() {
    return browseRecordId;
  }

  public void setBrowseRecordId(long browseRecordId) {
    this.browseRecordId = browseRecordId;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public long getGoodsId() {
    return goodsId;
  }

  public void setGoodsId(long goodsId) {
    this.goodsId = goodsId;
  }


  public long getGoodsCategory() {
    return goodsCategory;
  }

  public void setGoodsCategory(long goodsCategory) {
    this.goodsCategory = goodsCategory;
  }

}
