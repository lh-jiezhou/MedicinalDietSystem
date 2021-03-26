<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/15
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--####个人中心通用模块--%>
<%--欢迎--%>
<div class="layui-fluid">
    <div class="layui-row">
        <br>
        <label class="layui-form-label" style="width: 100%; text-align: center; font-size: 24px; color: rgb(0, 0, 0);">欢迎来到药膳家！</label>
    </div><br>
</div>
<%--个人基本信息--%>
<div class="layui-row" style="background-color:#ffffff">
    <div class="layui-col-md2">
        <img style="width: 200px; height: 200px;" src="${context}/static/images/common/用户头像.png" class="">
    </div>
    <div class="layui-col-md7">
        <div class="layui-col-md12" style="margin-top: 8px; ">
            <span style="margin-left: 32px; font-size: 22px">
                <span class="layui-icon layui-icon-username" style="font-size: 22px; color: #6980ff;"></span>
                <c:choose>
                    <c:when test="${SESSION_USER.userNickname != null}">
                        ${SESSION_USER.userNickname}
                    </c:when>
                    <c:otherwise>
                        ${SESSION_USER.userNo}
                    </c:otherwise>
                </c:choose>
            </span>
        </div>
        <div class="layui-col-md12" style="margin-top: 5px; margin-left: 35px">
            <span  class="layui-breadcrumb" lay-separator="|">
              <a href="">
                   <c:choose>
                       <c:when test="${SESSION_USER.userSex != null}">
                           ${SESSION_USER.userSex}
                       </c:when>
                       <c:otherwise>
                           <span>无</span>
                       </c:otherwise>
                   </c:choose>
              </a>
              <a href="">年龄：${SESSION_USER.userAge}岁</a>
              <a href="">职业：${SESSION_USER.userJob}</a>
              <a href="">目标：${SESSION_USER.userAim}</a>
            </span>&nbsp;&nbsp;
            <a href="${context}/user/showUser" style="font-size: 12px">编辑个人资料</a>
        </div>
        <div class="layui-col-md12" style="height: 24px; margin-left: 35px; margin-top: 5px">
            <span>个性签名：${SESSION_USER.userSign}</span>
        </div>
        <br><hr class="layui-bg-orange" style="width: 700px; margin-left: 30px">
        <div class="layui-col-md12" style="margin-left: 35px;">
            <c:choose>
                <c:when test="${PHYSIQUE.physiqueName != null}">
                    <%--测试后--%>
                    <span class="layui-icon layui-icon-note"
                          style="font-size: 14px; color: #7363ff;"></span>
                    <span >我的体质：${PHYSIQUE.physiqueName}</span><br>
                    <span class="layui-icon layui-icon-note"
                          style="font-size: 14px; color: #7363ff;"></span>
                    <span>调养原则：${PHYSIQUE.physiquePrinciple}</span><br>
                    <span class="layui-icon layui-icon-note"
                          style="font-size: 14px; color: #7363ff;"></span>
                    <span>体质特征：${PHYSIQUE.physiqueCharacteristic}</span><br>
                    <span class="layui-icon layui-icon-note"
                          style="font-size: 14px; color: #7363ff;"></span>
                    <span>饮食推荐：${PHYSIQUE.physiqueDietRecommend}</span><br>
                </c:when>
                <c:otherwise>
                    <%--测试前--%>
                    <span>您还没进行体质测试，点击下方进行测试</span>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <%--<div class="layui-col-md2 " style="border:1px solid #ffcd08; width: 200px; height: 200px; margin-left: 85px">--%>
    <%--<div class="layui-col-md12 layui-row" style="width: 200px; height: 100px;">--%>
    <%--<div class="layui-col-md6" style="width: 100px; height: 100px;">--%>
    <%--<div style="background-color: #FFB800">11</div>--%>

    <%--</div>--%>
    <%--<div class="layui-col-md6" style="width: 100px; height: 100px;">--%>
    <%--<div class="layui-col-md6" style="width: 100px; height: 100px;">--%>
    <%--<div style="background-color: #FFB800">11</div>--%>

    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="layui-col-md12 layui-row" style="width: 200px; height: 100px;">--%>
    <%--<div class="layui-col-md6" style="width: 100px; height: 100px;">33</div>--%>
    <%--<div class="layui-col-md6" style="width: 100px; height: 100px;">44</div>--%>
    <%--</div>--%>

    <%--</div>--%>
</div><br>
<%--####个人中心通用模块--%>
