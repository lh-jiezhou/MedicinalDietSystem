package com.lh;

import com.lh.mapper.MedicinalDietTableMapper;
import com.lh.pojo.MedicinalDietTable;
import com.lh.util.MybatisUtil;
import com.lh.util.PhysiqueAlgorithm;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MedicinalTest {
    @Test
    public void m1(){
        System.out.println("hello");
//        SqlSession sqlSession = MybatisUtil.getSession();
//
//        MedicinalDietTableMapper mapper = sqlSession.getMapper(MedicinalDietTableMapper.class);
//        List<MedicinalDietTable> medicinalDietTableList = new ArrayList<>();
//        medicinalDietTableList = mapper.selectMedicinalDietTableByEfficacyId(1);
//        for (int i=0;i<medicinalDietTableList.size();i++){
//            System.out.println("药膳"+(i+1)+": " + medicinalDietTableList.get(i).getMedDietName());
//        }
//
//        sqlSession.close();
    }

    @Test
    public void t1(){
        List<String> list1 = new ArrayList<String>();
        List<String> list2 = new ArrayList<String>();
        list1.add("1");
        list1.add("2");
        list1.add("3");
        list1.add("4");
        list1.add("5");

        list2.add("a");
        //赋值list1前两个到list2中
        System.out.println(list2);
        list2.addAll(list1.subList(3, 5));//可以先按下标截取，再添加
        System.out.println(list2);
    }


    @Test
    public void t2(){
        List<Integer> list1 = new ArrayList<Integer>();
        list1.add(1);
        list1.add(2);
        list1.add(3);

        System.out.println(list1);
        int a = list1.get(0);
        list1.set(0, 0);
        list1.add(a);
        System.out.println(list1);

        //赋值list1前两个到list2中
    }

    @Test
    public void t3(){
        List<Integer> list1 = new ArrayList<Integer>();
        List<Integer> list2 = null;
        list1.add(75);
        list1.add(16);
        list1.add(27);
        list1.add(25);
        list1.add(32);
        list1.add(25);
        list1.add(10);
        list1.add(18);
        list1.add(10);

//        System.out.println(PhysiqueAlgorithm.getTrueScoreList(list1,1));
//
//        list2 = PhysiqueAlgorithm.getPhysiqueResult(list1);

//        System.out.println(list2);

        System.out.println(Collections.max(list1));
        System.out.println(list1.indexOf(Collections.max(list1)));


    }

    @Test
    public void t4(){
        System.out.println(PhysiqueAlgorithm.getOldScore(16, 8));
    }
}
