<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/8
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--通用布局-->
<%--搜索--%>
<div style="background-color:#CD853F" class="">
    <div class="layui-row">
        <div class="layui-row" style="text-indent: 0px; height: 114px;">
            <div class="layui-col-md4" style="top: 15px; left: 250px;">
                <img src="${context}/static/images/common/logo.png" class="" height="80" width="200">
            </div>
            <div class="layui-col-md5" style="top: 38px;">
                <form class="layui-form" style="left: 10px;" action="${context}/main/showMedicinalDietByWords" method="post">
                    <div class="layui-inline">
                        <input name="words" autocomplete="off" value="" class="layui-input" style="width: 300px;" placeholder="请输入药膳名/症状/功能">
                    </div>
                    <div class="layui-inline" >
                        <input name="pageNum" lay-verify="title" type="hidden"  value="1">
                    </div>
                    <button class="layui-btn layui-btn-warm" style="width: 100px;"><i class="layui-icon layui-icon-search"></i></button>
                </form>
            </div>
            <c:choose>
                <c:when test="${SESSION_USER.userNo != null}">
                    <%--登录后--%>
                    <div class="layui-col-md3" style="text-indent: 0px; line-height: 100%; height: 100px; top: 45px; right: 80px;">
                        <a href="${context}/jsp/user/u_personal.jsp">
                            <img src="${context}/static/images/common/用户头像.png" class="layui-nav-img">
                            <span style="color: #e2e2e2; margin-right: 15px">${SESSION_USER.userNo}</span>
                        </a>
                        <a href="${context}/jsp/user/u_personal.jsp">
                            <span style="color: #e2e2e2; margin-right: 15px">个人中心</span>
                        </a>
                        <a class="tips" href="javascript:;" >
                            <span style="color: #e2e2e2">退出</span>
                        </a>
                    </div>
                </c:when>
                <c:otherwise>
                    <%--登录前--%>
                    <div class="layui-col-md3" style="text-indent: 0px; line-height: 100%; height: 70px; top: 50px; right: 180px;">
                        <i class="layui-icon layui-icon-login-wechat"></i><a href="/" class="" style="text-indent: 0px; font-size: 16px;">微信登录</a>&nbsp; &nbsp;&nbsp;
                        <a href="${context}/jsp/user/u_register.jsp" class="" style="font-size: 16px;">注册</a>&nbsp; &nbsp;&nbsp;
                        <a href="${context}/jsp/user/u_login.jsp" class="" style="font-size: 16px;">登录</a>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>
<%--菜单--%>
<div class="layui-row">
    <ul id="myTab" class="layui-nav layui-bg-white" style="border-top-width: 0px; text-indent: 0px; line-height: 0px; min-height: 0px; min-width: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); text-align: center;">
        <li class="layui-nav-item"><a href="${context}/jsp/main/m_home.jsp" class="" style="color: rgb(0, 0, 0); text-align: center; letter-spacing: 0px; font-weight: bold; font-size: 20px; text-indent: 4px;">首页</a></li>
        <li class="layui-nav-item">
            <a href="${context}/main/showAllMedicinalDiet/%25/1" class="" style="color: rgb(0, 0, 0); font-weight: bold; font-size: 20px; letter-spacing: 0px; text-indent: 4px;">药膳大全<span class="layui-nav-more layui-bg-gray"></span></a>
            <dl class="layui-nav-child layui-anim layui-anim-upbit">
                <!-- 二级菜单 -->
                <dd><a href="">功效分类</a></dd>
                <dd><a href="">形态分类</a></dd>
                <dd><a href="">制法分类</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;" class="" style="color: rgb(0, 0, 0); font-weight: bold; font-size: 20px; text-indent: 4px;">食材药材<span class="layui-nav-more layui-bg-gray"></span></a>
            <dl class="layui-nav-child layui-anim layui-anim-upbit">
                <!-- 二级菜单 -->
                <dd class=""><a href="" class="">食材</a></dd>
                <dd class=""><a href="" class="">药材</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="${context}/main/showMedicinalDietByEfficacy/32/1" class="" style="color: rgb(0, 0, 0); font-weight: bold; font-size: 20px; text-indent: 4px;">五脏调理</a></li>
        <li class="layui-nav-item"><a href="${context}/main/showMedicinalDietByDisease/1/1" class="" style="color: rgb(0, 0, 0); font-weight: bold; font-size: 20px; text-indent: 4px;">疾病调理</a></li>
        <li class="layui-nav-item"><a href="${context}/jsp/main/m_knowledge.jsp"  style="color: rgb(0, 0, 0); font-weight: bold; font-size: 20px; text-indent: 4px;">药膳百科</a></li>
        <c:choose>
            <c:when test="${SESSION_USER.userNo != null}">
                <%--登录后--%>
                <li class="layui-nav-item"><a href="${context}/jsp/user/u_personal.jsp" style="color: rgb(0, 0, 0); font-weight: bold; font-size: 20px; text-indent: 4px;">体质测试</a></li>
            </c:when>
            <c:otherwise>
                <%--登录前--%>
                <li class="layui-nav-item"><a href="${context}/jsp/user/u_login.jsp" onClick="return confirm('请先登录，再进行体质测试');" style="color: rgb(0, 0, 0); font-weight: bold; font-size: 20px; text-indent: 4px;">体质测试</a></li>
            </c:otherwise>
        </c:choose>
    </ul>
</div>
