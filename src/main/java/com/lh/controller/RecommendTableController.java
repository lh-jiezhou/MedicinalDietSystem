package com.lh.controller;

import com.lh.pojo.MedicinalDietTable;
import com.lh.service.MedicinalDietTableService;
import com.lh.service.RecommendTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/recommend")
public class RecommendTableController {

    @Autowired
    private RecommendTableService recommendTableService;
    @Autowired
    private MedicinalDietTableService medicinalDietTableService;

    @RequestMapping("/showRecommendMed")
    public String showRecommendMed(HttpSession session, Model model){
        long userId = (long)session.getAttribute("USER_ID");
        //1、显示体质推荐
        List<Integer> medIdByPhy = recommendTableService.selectRecommendMedId(userId, 1);
        List<MedicinalDietTable> medTablesByPhy = new ArrayList<>();
        for (int i = 0; i < medIdByPhy.size() && i < 4; i++){ //5指定数量
            medTablesByPhy.add(medicinalDietTableService.selectMedById(medIdByPhy.get(i)));
        }
//        System.out.println("推荐药膳ID: " + medIdByPhy);
//        for (int i = 0; i < medTablesByPhy.size(); i++){
//            System.out.println(medTablesByPhy.get(i).getMedDietName());
//        }
        model.addAttribute("medTablesByPhy", medTablesByPhy);

        //2、显示职业推荐(暂时####)
        List<MedicinalDietTable> medTablesByJob = new ArrayList<>();
        medTablesByJob.add(medicinalDietTableService.selectMedById(45));
        medTablesByJob.add(medicinalDietTableService.selectMedById(227));
        medTablesByJob.add(medicinalDietTableService.selectMedById(193));
        medTablesByJob.add(medicinalDietTableService.selectMedById(201));
        model.addAttribute("medTablesByJob", medTablesByJob);

        //3、显示目标推荐
        List<Integer> medIdByAim = recommendTableService.selectRecommendMedId(userId, 3);
        List<MedicinalDietTable> medTablesByAim = new ArrayList<>();
        for (int i = 0; i < medIdByAim.size() && i < 5; i++){
            medTablesByAim.add(medicinalDietTableService.selectMedById(medIdByAim.get(i)));
        }
        model.addAttribute("medTablesByAim", medTablesByAim);

        //4、显示相似推荐



        return "/user/u_recommend";
    }

}
