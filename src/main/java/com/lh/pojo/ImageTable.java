package com.lh.pojo;


public class ImageTable {

  private long imageId;
  private long goodsId;
  private long goodsCategory;
  private String imageAddress;
  private long imageSequence;
  private String imageExplain;


  public long getImageId() {
    return imageId;
  }

  public void setImageId(long imageId) {
    this.imageId = imageId;
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


  public String getImageAddress() {
    return imageAddress;
  }

  public void setImageAddress(String imageAddress) {
    this.imageAddress = imageAddress;
  }


  public long getImageSequence() {
    return imageSequence;
  }

  public void setImageSequence(long imageSequence) {
    this.imageSequence = imageSequence;
  }


  public String getImageExplain() {
    return imageExplain;
  }

  public void setImageExplain(String imageExplain) {
    this.imageExplain = imageExplain;
  }
}
