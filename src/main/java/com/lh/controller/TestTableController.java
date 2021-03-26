package com.lh.controller;

import com.lh.pojo.TestQuestionTable;
import com.lh.pojo.TestResultTable;
import com.lh.service.*;
import com.lh.util.PhysiqueAlgorithm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/test")
public class TestTableController {

    @Autowired
    private TestQuestionTableService testQuestionTableService;
    @Autowired
    private TestResultTableService testResultTableService;
    @Autowired
    private RecommendTableService recommendTableService;
    @Autowired
    private MedicinalDietTableService medicinalDietTableService;
    @Autowired
    private PhysiqueTableService physiqueTableService;

    //显示试题
    @RequestMapping("/showTest/{testId}")
    public String showTest(@PathVariable("testId") long testId, Model model){
        List<TestQuestionTable> testQuestionTables = testQuestionTableService.selectTestQuestionByTestId(testId);
        //你看起来
        List<TestQuestionTable> testQ1 = new ArrayList<>();
        //你感觉
        List<TestQuestionTable> testQ2 = new ArrayList<>();
        //你平日有
        List<TestQuestionTable> testQ3 = new ArrayList<>();
        //index
        Integer index1 = 0, index2 = 0, index3 = 0;
        // testId: 1全面测试67（23，23，21）；2详细测试45/9（15）； 3快速测试27/9（9）
        if(testId == 1){
            testQ1.addAll(testQuestionTables.subList(0, 23));
            testQ2.addAll(testQuestionTables.subList(23, 46));
            testQ3.addAll(testQuestionTables.subList(46, 67));
            index1 = 1;
            index2 = 24;
            index3 = 47;
        }
        else if (testId == 2){
            testQ1.addAll(testQuestionTables.subList(0, 15));
            testQ2.addAll(testQuestionTables.subList(15, 30));
            testQ3.addAll(testQuestionTables.subList(30, 45));
            index1 = 1;
            index2 = 16;
            index3 = 31;
        }
        else if (testId == 3){
            testQ1.addAll(testQuestionTables.subList(0, 9));
            testQ2.addAll(testQuestionTables.subList(9, 18));
            testQ3.addAll(testQuestionTables.subList(18, 27));
            index1 = 1;
            index2 = 10;
            index3 = 19;
        }
        model.addAttribute("testQ1", testQ1);
        model.addAttribute("testQ2", testQ2);
        model.addAttribute("testQ3", testQ3);
        model.addAttribute("testId", testId);
        model.addAttribute("index1", index1);
        model.addAttribute("index2", index2);
        model.addAttribute("index3", index3);

        return "/user/u_test";
    }

    //获得测试分数,计算测试结果
    @RequestMapping("/showTestResult/{testId}")
    public String showTestResult(@PathVariable("testId") long testId, HttpServletRequest request, HttpSession session, Model model){
        //九种体质分数 List
        List<Integer> scoreList = new ArrayList<>();
        if(testId == 1){
            //原生request获得值（暂时）
            Integer a1 = Integer.parseInt(request.getParameter("1"));
            Integer a2 = Integer.parseInt(request.getParameter("2"));
            Integer a3 = Integer.parseInt(request.getParameter("3"));
            Integer a4 = Integer.parseInt(request.getParameter("4"));
            Integer a5 = Integer.parseInt(request.getParameter("5"));
            Integer a6 = Integer.parseInt(request.getParameter("6"));
            Integer a7 = Integer.parseInt(request.getParameter("7"));
            Integer a8 = Integer.parseInt(request.getParameter("8"));
            scoreList.add(a1+a2+a3+a4+a5+a6+a7+a8); //1平和质
            Integer b1 = Integer.parseInt(request.getParameter("9"));
            Integer b2 = Integer.parseInt(request.getParameter("10"));
            Integer b3 = Integer.parseInt(request.getParameter("11"));
            Integer b4 = Integer.parseInt(request.getParameter("12"));
            Integer b5 = Integer.parseInt(request.getParameter("13"));
            Integer b6 = Integer.parseInt(request.getParameter("14"));
            Integer b7 = Integer.parseInt(request.getParameter("15"));
            Integer b8 = Integer.parseInt(request.getParameter("16"));
            scoreList.add(b1+b2+b3+b4+b5+b6+b7+b8); //2
            Integer c1 = Integer.parseInt(request.getParameter("17"));
            Integer c2 = Integer.parseInt(request.getParameter("18"));
            Integer c3 = Integer.parseInt(request.getParameter("19"));
            Integer c4 = Integer.parseInt(request.getParameter("20"));
            Integer c5 = Integer.parseInt(request.getParameter("21"));
            Integer c6 = Integer.parseInt(request.getParameter("22"));
            Integer c7 = Integer.parseInt(request.getParameter("23"));
            scoreList.add(c1+c2+c3+c4+c5+c6+c7); //3
            Integer d1 = Integer.parseInt(request.getParameter("24"));
            Integer d2 = Integer.parseInt(request.getParameter("25"));
            Integer d3 = Integer.parseInt(request.getParameter("26"));
            Integer d4 = Integer.parseInt(request.getParameter("27"));
            Integer d5 = Integer.parseInt(request.getParameter("28"));
            Integer d6 = Integer.parseInt(request.getParameter("29"));
            Integer d7 = Integer.parseInt(request.getParameter("30"));
            Integer d8 = Integer.parseInt(request.getParameter("31"));
            scoreList.add(d1+d2+d3+d4+d5+d6+d7+d8); //4
            Integer e1 = Integer.parseInt(request.getParameter("32"));
            Integer e2 = Integer.parseInt(request.getParameter("33"));
            Integer e3 = Integer.parseInt(request.getParameter("34"));
            Integer e4 = Integer.parseInt(request.getParameter("35"));
            Integer e5 = Integer.parseInt(request.getParameter("36"));
            Integer e6 = Integer.parseInt(request.getParameter("37"));
            Integer e7 = Integer.parseInt(request.getParameter("38"));
            Integer e8 = Integer.parseInt(request.getParameter("39"));
            scoreList.add(e1+e2+e3+e4+e5+e6+e7+e8); //5
            Integer f1 = Integer.parseInt(request.getParameter("40"));
            Integer f2 = Integer.parseInt(request.getParameter("41"));
            Integer f3 = Integer.parseInt(request.getParameter("42"));
            Integer f4 = Integer.parseInt(request.getParameter("43"));
            Integer f5 = Integer.parseInt(request.getParameter("44"));
            Integer f6 = Integer.parseInt(request.getParameter("45"));
            Integer f7 = Integer.parseInt(request.getParameter("46"));
            scoreList.add(f1+f2+f3+f4+f5+f6+f7); //6
            Integer g1 = Integer.parseInt(request.getParameter("47"));
            Integer g2 = Integer.parseInt(request.getParameter("48"));
            Integer g3 = Integer.parseInt(request.getParameter("49"));
            Integer g4 = Integer.parseInt(request.getParameter("50"));
            Integer g5 = Integer.parseInt(request.getParameter("51"));
            Integer g6 = Integer.parseInt(request.getParameter("52"));
            Integer g7 = Integer.parseInt(request.getParameter("53"));
            scoreList.add(g1+g2+g3+g4+g5+g6+g7); //7
            Integer h1 = Integer.parseInt(request.getParameter("54"));
            Integer h2 = Integer.parseInt(request.getParameter("55"));
            Integer h3 = Integer.parseInt(request.getParameter("56"));
            Integer h4 = Integer.parseInt(request.getParameter("57"));
            Integer h5 = Integer.parseInt(request.getParameter("58"));
            Integer h6 = Integer.parseInt(request.getParameter("59"));
            Integer h7 = Integer.parseInt(request.getParameter("60"));
            scoreList.add(h1+h2+h3+h4+h5+h6+h7); //8
            Integer i1 = Integer.parseInt(request.getParameter("61"));
            Integer i2 = Integer.parseInt(request.getParameter("62"));
            Integer i3 = Integer.parseInt(request.getParameter("63"));
            Integer i4 = Integer.parseInt(request.getParameter("64"));
            Integer i5 = Integer.parseInt(request.getParameter("65"));
            Integer i6 = Integer.parseInt(request.getParameter("66"));
            Integer i7 = Integer.parseInt(request.getParameter("67"));
            scoreList.add(i1+i2+i3+i4+i5+i6+i7); //9
        }
        else if (testId == 2){
            Integer a1 = Integer.parseInt(request.getParameter("1"));
            Integer a2 = Integer.parseInt(request.getParameter("2"));
            Integer a3 = Integer.parseInt(request.getParameter("3"));
            Integer a4 = Integer.parseInt(request.getParameter("4"));
            Integer a5 = Integer.parseInt(request.getParameter("5"));
            scoreList.add(a1+a2+a3+a4+a5); //1平和质
            Integer b1 = Integer.parseInt(request.getParameter("6"));
            Integer b2 = Integer.parseInt(request.getParameter("7"));
            Integer b3 = Integer.parseInt(request.getParameter("8"));
            Integer b4 = Integer.parseInt(request.getParameter("9"));
            Integer b5 = Integer.parseInt(request.getParameter("10"));
            scoreList.add(b1+b2+b3+b4+b5); //2
            Integer c1 = Integer.parseInt(request.getParameter("11"));
            Integer c2 = Integer.parseInt(request.getParameter("12"));
            Integer c3 = Integer.parseInt(request.getParameter("13"));
            Integer c4 = Integer.parseInt(request.getParameter("14"));
            Integer c5 = Integer.parseInt(request.getParameter("15"));
            scoreList.add(c1+c2+c3+c4+c5); //3
            Integer d1 = Integer.parseInt(request.getParameter("16"));
            Integer d2 = Integer.parseInt(request.getParameter("17"));
            Integer d3 = Integer.parseInt(request.getParameter("18"));
            Integer d4 = Integer.parseInt(request.getParameter("19"));
            Integer d5 = Integer.parseInt(request.getParameter("20"));
            scoreList.add(d1+d2+d3+d4+d5); //4
            Integer e1 = Integer.parseInt(request.getParameter("21"));
            Integer e2 = Integer.parseInt(request.getParameter("22"));
            Integer e3 = Integer.parseInt(request.getParameter("23"));
            Integer e4 = Integer.parseInt(request.getParameter("24"));
            Integer e5 = Integer.parseInt(request.getParameter("25"));
            scoreList.add(e1+e2+e3+e4+e5); //5
            Integer f1 = Integer.parseInt(request.getParameter("26"));
            Integer f2 = Integer.parseInt(request.getParameter("27"));
            Integer f3 = Integer.parseInt(request.getParameter("28"));
            Integer f4 = Integer.parseInt(request.getParameter("29"));
            Integer f5 = Integer.parseInt(request.getParameter("30"));
            scoreList.add(f1+f2+f3+f4+f5); //6
            Integer g1 = Integer.parseInt(request.getParameter("31"));
            Integer g2 = Integer.parseInt(request.getParameter("32"));
            Integer g3 = Integer.parseInt(request.getParameter("33"));
            Integer g4 = Integer.parseInt(request.getParameter("34"));
            Integer g5 = Integer.parseInt(request.getParameter("35"));
            scoreList.add(g1+g2+g3+g4+g5); //7
            Integer h1 = Integer.parseInt(request.getParameter("36"));
            Integer h2 = Integer.parseInt(request.getParameter("37"));
            Integer h3 = Integer.parseInt(request.getParameter("38"));
            Integer h4 = Integer.parseInt(request.getParameter("39"));
            Integer h5 = Integer.parseInt(request.getParameter("40"));
            scoreList.add(h1+h2+h3+h4+h5); //8
            Integer i1 = Integer.parseInt(request.getParameter("41"));
            Integer i2 = Integer.parseInt(request.getParameter("42"));
            Integer i3 = Integer.parseInt(request.getParameter("43"));
            Integer i4 = Integer.parseInt(request.getParameter("44"));
            Integer i5 = Integer.parseInt(request.getParameter("45"));
            scoreList.add(i1+i2+i3+i4+i5); //9
        }
        else if (testId == 3){
            Integer a1 = Integer.parseInt(request.getParameter("1"));
            Integer a2 = Integer.parseInt(request.getParameter("2"));
            Integer a3 = Integer.parseInt(request.getParameter("3"));
            scoreList.add(a1+a2+a3); //1平和质
            Integer b1 = Integer.parseInt(request.getParameter("4"));
            Integer b2 = Integer.parseInt(request.getParameter("5"));
            Integer b3 = Integer.parseInt(request.getParameter("6"));
            scoreList.add(b1+b2+b3); //2
            Integer c1 = Integer.parseInt(request.getParameter("7"));
            Integer c2 = Integer.parseInt(request.getParameter("8"));
            Integer c3 = Integer.parseInt(request.getParameter("9"));
            scoreList.add(c1+c2+c3); //3
            Integer d1 = Integer.parseInt(request.getParameter("10"));
            Integer d2 = Integer.parseInt(request.getParameter("11"));
            Integer d3 = Integer.parseInt(request.getParameter("12"));
            scoreList.add(d1+d2+d3); //4
            Integer e1 = Integer.parseInt(request.getParameter("13"));
            Integer e2 = Integer.parseInt(request.getParameter("14"));
            Integer e3 = Integer.parseInt(request.getParameter("15"));
            scoreList.add(e1+e2+e3); //5
            Integer f1 = Integer.parseInt(request.getParameter("16"));
            Integer f2 = Integer.parseInt(request.getParameter("17"));
            Integer f3 = Integer.parseInt(request.getParameter("18"));
            scoreList.add(f1+f2+f3); //6
            Integer g1 = Integer.parseInt(request.getParameter("19"));
            Integer g2 = Integer.parseInt(request.getParameter("20"));
            Integer g3 = Integer.parseInt(request.getParameter("21"));
            scoreList.add(g1+g2+g3); //7
            Integer h1 = Integer.parseInt(request.getParameter("22"));
            Integer h2 = Integer.parseInt(request.getParameter("23"));
            Integer h3 = Integer.parseInt(request.getParameter("24"));
            scoreList.add(h1+h2+h3); //8
            Integer i1 = Integer.parseInt(request.getParameter("25"));
            Integer i2 = Integer.parseInt(request.getParameter("26"));
            Integer i3 = Integer.parseInt(request.getParameter("27"));
            scoreList.add(i1+i2+i3); //9
        }
        //通过提交分数与条目得到转化后分数
        List<Integer> trueScore = PhysiqueAlgorithm.getTrueScoreList(scoreList, testId);
        //通过转化分数计算得到体质
        List<Integer> physiqueResult = PhysiqueAlgorithm.getPhysiqueResult(trueScore);
        //插入体质信息
        long userId = (long)session.getAttribute("USER_ID");
        testResultTableService.insertTestResult(testId, userId, physiqueResult.get(0), trueScore);
        System.out.println("体质ID: " + physiqueResult);

        //#######对推荐表进行插入
        //逻辑：根据体质关键字 模糊查找药膳id（热度逆序）
        //1、获得体质关键字
        List<String> keyList = new ArrayList<>();
        keyList.add(physiqueTableService.selectPhysiqueKeyA(physiqueResult.get(0)));
        keyList.add(physiqueTableService.selectPhysiqueKeyB(physiqueResult.get(0)));
        keyList.add(physiqueTableService.selectPhysiqueKeyC(physiqueResult.get(0)));
        keyList.add(physiqueTableService.selectPhysiqueKeyD(physiqueResult.get(0)));
        System.out.println("体质推荐关键字 ；" + keyList);
        //2、模糊查找药膳Id（热度逆序）
        List<Integer> medIdList = new ArrayList<>();
        medIdList.add(medicinalDietTableService.selectMedIdByRecommendKey(keyList.get(0), 1).get(0));
        medIdList.add(medicinalDietTableService.selectMedIdByRecommendKey(keyList.get(1), 1).get(0));
        medIdList.add(medicinalDietTableService.selectMedIdByRecommendKey(keyList.get(2), 1).get(0));
        medIdList.add(medicinalDietTableService.selectMedIdByRecommendKey(keyList.get(3), 1).get(0));
        System.out.println("推荐药膳ID: " + medIdList);
        //3、将药膳Id插入到推荐表
        for(int i = 0; i<medIdList.size(); i++){
            recommendTableService.insertRecommend(userId, medIdList.get(i), 1);
        }
        //#######对推荐表进行插入


        //#######弹框提示
        String phyTips = null;
        if(physiqueResult.size() == 1){
            //1、单一体质
            switch (physiqueResult.get(0)){
                case 1: phyTips = "平和质"; break;
                case 2: phyTips = "气虚质"; break;
                case 3: phyTips = "阳虚质"; break;
                case 4: phyTips = "阴虚质"; break;
                case 5: phyTips = "痰湿质"; break;
                case 6: phyTips = "湿热质"; break;
                case 7: phyTips = "血瘀质"; break;
                case 8: phyTips = "气郁质"; break;
                case 9: phyTips = "特禀质"; break;
            }
        }else {
            //2、倾向体质（判定结果：基本是平和质，有痰湿质倾向）
            switch (physiqueResult.get(1)){
                case 2: phyTips = "基本是平和质，有气虚质倾向"; break;
                case 3: phyTips = "基本是平和质，有阳虚质倾向"; break;
                case 4: phyTips = "基本是平和质，有阴虚质倾向"; break;
                case 5: phyTips = "基本是平和质，有痰湿质倾向"; break;
                case 6: phyTips = "基本是平和质，有湿热质倾向"; break;
                case 7: phyTips = "基本是平和质，有血瘀质倾向"; break;
                case 8: phyTips = "基本是平和质，有气郁质倾向"; break;
                case 9: phyTips = "基本是平和质，有特禀质倾向"; break;
            }
        }
        model.addAttribute("phyTips", phyTips);
//        session.setAttribute("PHY_TIPS", phyTips);
        System.out.println("弹框提示：" + phyTips);
        //#######弹框提示

        //#######页面跳转 并显示体质详细信息
        TestResultTable testResultTable = testResultTableService.selectTestResultByUserId(userId);
//        model.addAttribute("testResultTable", testResultTable);
        session.setAttribute("PHYSIQUE", testResultTable.getPhysiqueTable());
//        System.out.println("体质详细信息：" + testResultTable.getPhysiqueId());
//        System.out.println("体质详细信息：" + testResultTable.getPhysiqueTable().getPhysiqueId());
//        System.out.println("体质详细信息：" + testResultTable.getPhysiqueTable().getPhysiqueName());

        //#######页面跳转 并显示体质详细信息

        return "/user/u_personal";
    }

}
