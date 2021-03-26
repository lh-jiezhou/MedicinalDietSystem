<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/2
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-header">
    <div class="layui-logo">药膳管理系统</div>
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            <a href="javascript:;">
                <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                ${SESSION_AdminMed.adminMedName}
            </a>
            <dl class="layui-nav-child">
                <dd><a href="javascript:;" onclick="personinfo('${SESSION_AdminMed.adminMedName}','${SESSION_AdminMed.adminMedTel}')">基本资料</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="${context}/admin/logout">退了</a></li>
    </ul>
</div>

<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test" >
            <li class="layui-nav-item"><a href="${context}/jsp/admin/am_index.jsp" style="color:#009688;">首页</a></li>
            <li class="layui-nav-item"><a href="${context}/admin/showMedicinalJsp">药膳管理</a></li>
        </ul>
    </div>
</div>


