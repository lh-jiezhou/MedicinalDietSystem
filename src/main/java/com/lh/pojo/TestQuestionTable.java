package com.lh.pojo;


public class TestQuestionTable {

  private long questionId;
  private long testId;
  private String questionCont;
  private long answerA;
  private long answerB;
  private long answerC;
  private long answerD;
  private long answerE;
  private long questionType; //1~9


  public long getQuestionId() {
    return questionId;
  }

  public void setQuestionId(long questionId) {
    this.questionId = questionId;
  }


  public long getTestId() {
    return testId;
  }

  public void setTestId(long testId) {
    this.testId = testId;
  }


  public String getQuestionCont() {
    return questionCont;
  }

  public void setQuestionCont(String questionCont) {
    this.questionCont = questionCont;
  }


  public long getAnswerA() {
    return answerA;
  }

  public void setAnswerA(long answerA) {
    this.answerA = answerA;
  }

  public long getAnswerB() {
    return answerB;
  }

  public void setAnswerB(long answerB) {
    this.answerB = answerB;
  }

  public long getAnswerC() {
    return answerC;
  }

  public void setAnswerC(long answerC) {
    this.answerC = answerC;
  }

  public long getAnswerD() {
    return answerD;
  }

  public void setAnswerD(long answerD) {
    this.answerD = answerD;
  }

  public long getAnswerE() {
    return answerE;
  }

  public void setAnswerE(long answerE) {
    this.answerE = answerE;
  }

  public long getQuestionType() {
    return questionType;
  }

  public void setQuestionType(long questionType) {
    this.questionType = questionType;
  }
}
