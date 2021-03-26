package com.lh.controller;

import com.lh.pojo.TestResultTable;
import com.lh.pojo.UserTable;
import com.lh.dto.UserWithLoginDTO;
import com.lh.service.MedicinalDietTableService;
import com.lh.service.RecommendTableService;
import com.lh.service.TestResultTableService;
import com.lh.service.UserTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserTableController {

    @Autowired
    private UserTableService userTableService;
    @Autowired
    private TestResultTableService testResultTableService;
    @Autowired
    private MedicinalDietTableService medicinalDietTableService;
    @Autowired
    private RecommendTableService recommendTableService;

    @RequestMapping("/userLogin")
    public String userLogin(UserWithLoginDTO userWithLoginDTO, HttpSession session){
        System.out.println("userLogin....");
        UserTable user = userTableService.selectUserWithLogin(userWithLoginDTO);
        if(user != null){
            //将用户信息存储到会话当中（数据库检查？？）
            session.setAttribute("SESSION_USER", user);
            session.setAttribute("USER_ID", user.getUserId());
            TestResultTable testResultTable = testResultTableService.selectTestResultByUserId(user.getUserId());
            if(testResultTable != null){
                session.setAttribute("PHYSIQUE", testResultTable.getPhysiqueTable());
            }
            //成功则进入user页面(视图解析器进入)
            return "/user/u_personal";
        }else {
            //否则重定向
            session.setAttribute("msg", "账号或密码错误！");
            return "redirect:/jsp/user/u_login.jsp";
        }
    }

    @RequestMapping("/userLoginOut")
    public String userLoginOut(HttpSession session){
        session.removeAttribute("SESSION_USER");
        session.removeAttribute("msg");
        session.removeAttribute("USER_ID");
        session.removeAttribute("PHYSIQUE");
        return "/main/m_home";
    }


    @RequestMapping("/userRegister")
    public String userRegister(UserWithLoginDTO userWithLoginDTO, HttpSession session){
        System.out.println(userWithLoginDTO.getUserNo() + " = " +userWithLoginDTO.getUserPassword());
        //注册是否成功
        boolean registerSuccess = userTableService.insertUserTableBase(userWithLoginDTO);
        if(registerSuccess){
            //成功则进入登录界面
            session.setAttribute("msg", "注册成功");
            return "user/u_login";
        }else {
            //否则重定向
            return "redirect:/user/u_register";
        }
    }

    //更新个人基本信息（不包括密码，头像）
    @RequestMapping("/updatePerInfo")
    public String updatePerInfo(UserTable userTable, HttpSession session){
        System.out.println("更新数据： "+userTable);
        //更新个人信息是否成功
        boolean updateSuccess = userTableService.updateUserTableByUser(userTable);
        if(updateSuccess){
            //成功则进入 ## 个人中心界面
            long userId = (long)session.getAttribute("USER_ID");
            UserTable user = userTableService.selectUser(userId);
            //更新session中User
            session.setAttribute("SESSION_USER", user);

            //根据用户目标 插入目标( 编号3 )推荐
            //1、模糊查找药膳Id（热度逆序）
            List<Integer> medIdList = new ArrayList<>();
            medIdList.addAll(medicinalDietTableService.selectMedIdByRecommendKey(user.getUserAim(), 5));
            //2、将药膳Id插入到推荐表
            for(int i = 0; i<medIdList.size(); i++){
                recommendTableService.insertRecommend(userId, medIdList.get(i), 3);
            }

            //根据职业插入职业( 编号2 )推荐

            return "user/u_personal";
        }else {
            //否则重定向
            return "redirect:/user/u_login";
        }
    }

    //编辑个人信息时先显示个人信息（更新SESSION_USER）
    @RequestMapping("/showUser")
    public String showUser(HttpSession session){
        long userId = (long)session.getAttribute("USER_ID");
        UserTable user = userTableService.selectUser(userId);
        session.setAttribute("SESSION_USER", user);
        return "/user/u_information";
    }





//    @RequestMapping("/he")
//    public String he(Model model){
//        System.out.println("Hello");
//        model.addAttribute("msg", "提示");
//        return "/user/user";
//    }
}
