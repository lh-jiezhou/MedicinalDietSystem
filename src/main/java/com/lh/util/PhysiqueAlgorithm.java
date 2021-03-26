package com.lh.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PhysiqueAlgorithm {

    //返回体质编号：1~9 {附带倾向}
    public static List<Integer> getPhysiqueResult(List<Integer> trueScore){
        List<Integer> result = new ArrayList<>();
        System.out.println("转换后分数："+trueScore);
        int flag = 0;
        for(int i=1; i < trueScore.size(); i++){
//            if(trueScore.get(i) >= 40){
//                //1、直接偏颇质
//                result.add(i+1);
//                System.out.println("1、直接偏颇质");
//                return result;
            if(Collections.max(trueScore) >= 40){ //最大值 最相似 *****改
                //1、直接偏颇质
                result.add(trueScore.indexOf(Collections.max(trueScore)) + 1);
                System.out.println("1、直接偏颇质");
                return result;
            }else if(trueScore.get(i) < 40 && trueScore.get(i)>=30){
                result.add(i+1);
                flag = i+1;
            }
        }
        if(trueScore.get(0)>=60 && flag != 0){
            //2、基本是平和质，有偏颇质倾向
            int a = result.get(0);
            result.set(0, 1);
            result.add(a);
            System.out.println("2、基本是平和质，有偏颇质倾向");
            return result;
        }else {
            //trueScore.get(0)>=60 && flag == 0
            //3、是平和质
            result.add(1);
            System.out.println("3、是平和质");
            return result;
        }
    }

    //返回转化后分数列表
    public static List<Integer> getTrueScoreList(List<Integer> scoreList, long testId){
        List<Integer> trueScore = new ArrayList<>();
        if(testId == 1){
            trueScore.add(getTransformScore(scoreList.get(0), 8));
            trueScore.add(getTransformScore(scoreList.get(1), 8));
            trueScore.add(getTransformScore(scoreList.get(2), 7));
            trueScore.add(getTransformScore(scoreList.get(3), 8));
            trueScore.add(getTransformScore(scoreList.get(4), 8));
            trueScore.add(getTransformScore(scoreList.get(5), 7));
            trueScore.add(getTransformScore(scoreList.get(6), 7));
            trueScore.add(getTransformScore(scoreList.get(7), 7));
            trueScore.add(getTransformScore(scoreList.get(8), 7));
        }
        else if(testId == 2){
            trueScore.add(getTransformScore(scoreList.get(0), 5));
            trueScore.add(getTransformScore(scoreList.get(1), 5));
            trueScore.add(getTransformScore(scoreList.get(2), 5));
            trueScore.add(getTransformScore(scoreList.get(3), 5));
            trueScore.add(getTransformScore(scoreList.get(4), 5));
            trueScore.add(getTransformScore(scoreList.get(5), 5));
            trueScore.add(getTransformScore(scoreList.get(6), 5));
            trueScore.add(getTransformScore(scoreList.get(7), 5));
            trueScore.add(getTransformScore(scoreList.get(8), 5));
        }
        else if(testId == 3){
            trueScore.add(getTransformScore(scoreList.get(0), 3));
            trueScore.add(getTransformScore(scoreList.get(1), 3));
            trueScore.add(getTransformScore(scoreList.get(2), 3));
            trueScore.add(getTransformScore(scoreList.get(3), 3));
            trueScore.add(getTransformScore(scoreList.get(4), 3));
            trueScore.add(getTransformScore(scoreList.get(5), 3));
            trueScore.add(getTransformScore(scoreList.get(6), 3));
            trueScore.add(getTransformScore(scoreList.get(7), 3));
            trueScore.add(getTransformScore(scoreList.get(8), 3));
        }
        return trueScore;
    }

    //单个分数转化
    public static Integer getTransformScore(Integer score, Integer num){
        return 25*(score-num)/num;
    }

    public static Integer getOldScore(Integer score, Integer num){
        return (num*score)/25 + num;
    }
}
