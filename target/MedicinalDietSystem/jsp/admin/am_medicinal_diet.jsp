<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ClownJJ
  Date: 2019/4/22
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员 欢迎您！</title>
    <link rel="icon" href="${context}/static/images/common/网站icon.png" type="image/x-icon">
    <%--引入css,否则没有这个样式--%>
    <link href="${context}/static/plugins/layui/css/layui.css" rel="stylesheet" media="all"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="/jsp/common/a_header.jsp" />

    <div class="layui-body">
        <div style="background-color:#92B8B1;height: 6%;color:white;font-size: 16px;padding-top: 1%;">
            <label style="margin-left: 1%;">药膳管理 > 药膳信息列表</label>
        </div>
        <div class="layui-row">
            <div class="layui-col-md-offset3 layui-col-md6 " style="margin-top:2%;">
                <div class="layui-inline" style="width: 80%;">
                    <input type="text" name="condition" required  lay-verify="required" placeholder="请输入药膳名/症状/功能" autocomplete="off" class="layui-input ">
                </div>
                <button class="layui-btn" onclick="selectMedcinalInfo()"><i class="layui-icon layui-icon-search"></i></button>
            </div>
        </div>
        <div class="layui-row" style="margin:2%;background-color: rgba(235, 246, 255, 1);width: 96%;height: 11%;">
            <button class="layui-btn" style="margin-top: 1%;margin-left: 1%;" onclick="addmMedicinalInfo()"><i class="layui-icon layui-icon-add-1"></i>添加药膳信息</button>
            <button class="layui-btn layui-btn-danger" onclick="deleteMedicinalInfo('','')" style="margin-top: 1%;margin-left: 1%;"><i class="layui-icon layui-icon-delete"></i>批量删除</button>
        </div>
        <%-- 表格数据div --%>
        <div style="margin-left:2%;margin-right: 2%;">
            <table class="layui-table">
                <thead>
                    <tr>
                        <th><input type="checkbox" lay-skin="primary"></th>
                        <th>药膳ID</th>
                        <th>药膳名称</th>
                        <th>功效</th>
                        <th>药膳来源</th>
                        <th>发布者ID</th>
                        <th>功效类</th>
                        <th>形态类</th>
                        <th>制法类</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${MedicinalDietTableList}" var="medicinal">
                    <tr>
                        <td><input type="checkbox" lay-skin="primary" value="${medicinal.medicinalDietId}"></td>
                        <td><a title="查看药膳详情信息" href="javascript:;" onclick="showMedDietInfo('${medicinal.medicinalDietId}')">${medicinal.medicinalDietId}</a></td>
                        <td>${medicinal.medDietName}</td>
                        <td>${medicinal.medDietEfficacy}</td>
                        <td>${medicinal.medDietOrigin}</td>
                        <td><a title="查看发布者信息"  href="javascript:;" onclick="showPublisherInfo('${medicinal.medicinalPubId}')">${medicinal.medicinalPubId}</a></td>
                        <td>${medicinal.medEffiCate}</td>
                        <td>${medicinal.medShapeCate}</td>
                        <td>${medicinal.medMakeCate}</td>
                        <td>
                            <a style="cursor:pointer;"><i title="编辑药膳信息" onclick="editMedDietInfo('${medicinal.medicinalDietId}')" class="layui-icon layui-icon-edit"></i></a>
                            <a style="cursor:pointer;"><i title="添加制作流程" onclick="addMedDietProcess('${medicinal.medicinalDietId}')" class="layui-icon layui-icon-add-1"></i></a>
                            <a style="cursor:pointer;"><i title="查看制作流程" onclick="showMedDietProcess('${medicinal.medicinalDietId}')" class="layui-icon layui-icon-search"></i></a>
                            <a style="cursor:pointer;"><i title="删除制作流程" onclick="deleteMedDietProcess('${medicinal.medicinalDietId}')" class="layui-icon layui-icon-close"></i></a>
                            <a style="cursor:pointer;"><i title="删除药膳信息" onclick="deleteMedicinalInfo(this,'${medicinal.medicinalDietId}')" class="layui-icon layui-icon-delete"></i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <%-- 分页div --%>
        <div  style="margin-left:2%;margin-right: 2%;margin-top:1%;margin-bottom:2%;width: 96%;height: 7%;">
            <span>共 <strong id="maxPage">${maxPage}</strong> 页，当前第 <strong id="nowPage">1</strong> 页</span>
            <input type="hidden" name="hidden_condition" value="">
            <div class="layui-inline" style="margin-left:62%;">
            <input type="button" class="layui-btn layui-btn-sm layui-btn-primary" onclick="frontPage()" value="上一页">
            <input type="button" class="layui-btn layui-btn-sm layui-btn-primary" onclick="backPage()" value="下一页">
            <input type="text" class="layui-input layui-input-inline" id="skipPage" style="width: 40px;margin-left: 10px;margin-right: 10px;" >
            <input type="button" class="layui-btn layui-btn-sm layui-btn-primary" onclick="skipPage()" value="跳转">
            </div>
        </div>
    </div>

    <div class="layui-footer">
        <center> © 药膳管理系统</center>
    </div>
</div>

<%--####--%>
<script type="text/javascript" src="${context}/static/plugins/layui/layui.js"></script>
<script>
    layui.use(['element', 'jquery', 'layer','form'], function(){
        var element = layui.element;
        var jquery,$ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;

        // 显示管理员详情
        personinfo = function (name,tel){
            layer.open({
                type: 1,
                area: ['300px','300px'],
                fix: false, //不固定
                maxmin: false,
                shade:0.4,
                title: '管理员信息',
                content: "<div class='pd-10'><table class='table' style='font-size:22px;'><tbody>" +
                    "<tr><th class='text-r'>姓名：</th><td>"+name+"</td></tr>" +
                    "<tr><th class='text-r'>手机：</th><td>"+tel+"</td></tr></tbody></table></div>"
            });
        }

        // 全选复选框
        $("thead input[type='checkbox']").click(function () {
            $("tbody input[type='checkbox']").each(function () {
                $(this).prop("checked",$("thead input[type='checkbox']").prop("checked"));
            });
        });

        //药膳ID 查看药膳详情
        showMedDietInfo = function (id) {
            layer.open({
                type: 2,
                title: "查看药膳信息详情",
                area: ['800px','550px'],
                fixed: true, //不固定
                maxmin: false,
                content:"${context}/admin/selectMedicinalDietInfoById/"+id
            });
        }

        //药膳ID 编辑药膳详情
        editMedDietInfo = function (id) {
            layer.open({
                type: 2,
                title: "编辑药膳信息",
                area: ['800px','550px'],
                fixed: false,
                maxmin: false,
                content:"${context}/admin/editMedicinalDietJsp/"+id
            });
        }

        //发布者ID 查看发布者信息
        showPublisherInfo = function (id) {
            $.ajax({
                url:"${context}/admin/showPublisherInfo",
                type:"post",
                contentType:"application/json",
                data:JSON.stringify({"id":id}),
                success:function (data) {
                    var name = data.name;
                    var tel = data.tel;
                    layer.open({
                        type: 1,
                        area: ['300px','300px'],
                        fix: false, //不固定
                        maxmin: false,
                        shade:0.4,
                        title: '发布者信息',
                        content: "<div class='pd-10'><table class='table' style='font-size:22px;'><tbody>" +
                            "<tr><th class='text-r'>姓名：</th><td>"+name+"</td></tr>" +
                            "<tr><th class='text-r'>手机：</th><td>"+tel+"</td></tr></tbody></table></div>"
                    });
                }
            });
        }
        
        // 药膳信息添加
        addmMedicinalInfo = function () {
            layer.open({
                type: 2,
                title: "添加药膳信息",
                area: ['800px', '550px'],
                fixed: true, //不固定
                maxmin: false,
                content: "${context}/jsp/admin/am_medicinal_diet_add.jsp"
            });
        }
        
        //药膳信息查找
        selectMedcinalInfo = function () {
            $.ajax({
                url:"${context}/admin/selectMedDietByCondition",
                type:"post",
                data:JSON.stringify({"condition":$("input[name='condition']").val()}),
                contentType:"application/json",
                success:function (data) {
                    $("input[name='hidden_condition']").val(data.condition);
                    $("#maxPage").text(data.maxPage);
                    $("#nowPage").text(1);
                    data = data.MedicinalDietTableList;
                    var htmlText = "";
                    $("table tbody").empty();
                    for(var i=0;i<data.length;i++){
                        htmlText += "<tr>" +
                            "<td><input type='checkbox' lay-skin='primary' value='"+data[i].medicinalDietId+"'></td>" +
                            "<td><a href='javascript:;' onclick='showMedDietInfo("+data[i].medicinalDietId+")'>"+data[i].medicinalDietId+"</a></td>" +
                            "<td>"+data[i].medDietName+"</td>" +
                            "<td>"+data[i].medDietEfficacy+"</td>" +
                            "<td>"+data[i].medDietOrigin+"</td>" +
                            "<td><a href='javascript:;' onclick='showPublisherInfo("+data[i].medicinalPubId+")'>"+data[i].medicinalPubId+"</a></td>" +
                            "<td>"+data[i].medEffiCate+"</td>" +
                            "<td>"+data[i].medShapeCate+"</td>" +
                            "<td>"+data[i].medMakeCate+"</td>" +
                            "<td>" +
                            "<a style='cursor:pointer;'><i title='编辑药膳信息' onclick='editMedDietInfo("+data[i].medicinalDietId+")' class='layui-icon layui-icon-edit'></i></a>" +
                            "<a style='cursor:pointer;'><i title='添加制作流程' onclick='addMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-add-1'></i></a>" +
                            "<a style='cursor:pointer;'><i title='查看制作流程' onclick='showMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-search'></i></a>" +
                            "<a style='cursor:pointer;'><i title='删除制作流程' onclick='deleteMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-close'></i></a>" +
                            "<a style='cursor:pointer;'><i title='删除药膳信息' onclick='deleteMedicinalInfo(this,"+data[i].medicinalDietId+")' class='layui-icon layui-icon-delete'></i></a>" +
                            "</td>" +
                            "</tr>";
                    }
                    $("table tbody").append(htmlText);
                }
            });
        }

        // 上一页
        frontPage = function (condition) {
            if ($("#nowPage").text()=="1"){
                layer.msg("前面没有页数了!",{icon:5,time:1300});
            }else {
                $.ajax({
                    url:"${context}/admin/selectMedDietByPageOrConditon",
                    type:"post",
                    data:JSON.stringify({"page":parseInt($("#nowPage").text())-2,"condition":$("input[name='hidden_condition']").val()}),
                    contentType:"application/json",
                    success:function (data) {
                        data = data.MedicinalDietTableList;
                        var htmlText = "";
                        $("table tbody").empty();
                        for(var i=0;i<data.length;i++){
                            htmlText += "<tr>" +
                                "<td><input type='checkbox' lay-skin='primary' value='"+data[i].medicinalDietId+"'></td>" +
                                "<td><a href='javascript:;' onclick='showMedDietInfo("+data[i].medicinalDietId+")'>"+data[i].medicinalDietId+"</a></td>" +
                                "<td>"+data[i].medDietName+"</td>" +
                                "<td>"+data[i].medDietEfficacy+"</td>" +
                                "<td>"+data[i].medDietOrigin+"</td>" +
                                "<td><a href='javascript:;' onclick='showPublisherInfo("+data[i].medicinalPubId+")'>"+data[i].medicinalPubId+"</a></td>" +
                                "<td>"+data[i].medEffiCate+"</td>" +
                                "<td>"+data[i].medShapeCate+"</td>" +
                                "<td>"+data[i].medMakeCate+"</td>" +
                                "<td>" +
                                "<a style='cursor:pointer;'><i title='编辑药膳信息' onclick='editMedDietInfo("+data[i].medicinalDietId+")' class='layui-icon layui-icon-edit'></i></a>" +
                                "<a style='cursor:pointer;'><i title='添加制作流程' onclick='addMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-add-1'></i></a>" +
                                "<a style='cursor:pointer;'><i title='查看制作流程' onclick='showMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-search'></i></a>" +
                                "<a style='cursor:pointer;'><i title='删除制作流程' onclick='deleteMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-close'></i></a>" +
                                "<a style='cursor:pointer;'><i title='删除药膳信息' onclick='deleteMedicinalInfo(this,"+data[i].medicinalDietId+")' class='layui-icon layui-icon-delete'></i></a>" +
                                "</td>" +
                                "</tr>";
                        }
                        $("table tbody").append(htmlText);
                        $("#nowPage").text(parseInt($("#nowPage").text())-1);
                    }
                });
            }
        }

        // 下一页
        backPage = function (condition) {
            if ($("#nowPage").text()==$("#maxPage").text()){
                layer.msg("没有了!",{icon:5,time:1300});
            }else {
                $.ajax({
                    url:"${context}/admin/selectMedDietByPageOrConditon",
                    type:"post",
                    data:JSON.stringify({"page":parseInt($("#nowPage").text()),"condition":$("input[name='hidden_condition']").val()}),
                    contentType:"application/json",
                    success:function (data) {
                        data = data.MedicinalDietTableList;
                        var htmlText = "";
                        $("table tbody").empty();
                        for(var i=0;i<data.length;i++){
                            htmlText += "<tr>" +
                                "<td><input type='checkbox' lay-skin='primary' value='"+data[i].medicinalDietId+"'></td>" +
                                "<td><a href='javascript:;' onclick='showMedDietInfo("+data[i].medicinalDietId+")'>"+data[i].medicinalDietId+"</a></td>" +
                                "<td>"+data[i].medDietName+"</td>" +
                                "<td>"+data[i].medDietEfficacy+"</td>" +
                                "<td>"+data[i].medDietOrigin+"</td>" +
                                "<td><a href='javascript:;' onclick='showPublisherInfo("+data[i].medicinalPubId+")'>"+data[i].medicinalPubId+"</a></td>" +
                                "<td>"+data[i].medEffiCate+"</td>" +
                                "<td>"+data[i].medShapeCate+"</td>" +
                                "<td>"+data[i].medMakeCate+"</td>" +
                                "<td>" +
                                "<a style='cursor:pointer;'><i title='编辑药膳信息' onclick='editMedDietInfo("+data[i].medicinalDietId+")' class='layui-icon layui-icon-edit'></i></a>" +
                                "<a style='cursor:pointer;'><i title='添加制作流程' onclick='addMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-add-1'></i></a>" +
                                "<a style='cursor:pointer;'><i title='查看制作流程' onclick='showMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-search'></i></a>" +
                                "<a style='cursor:pointer;'><i title='删除制作流程' onclick='deleteMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-close'></i></a>" +
                                "<a style='cursor:pointer;'><i title='删除药膳信息' onclick='deleteMedicinalInfo(this,"+data[i].medicinalDietId+")' class='layui-icon layui-icon-delete'></i></a>" +
                                "</td>" +
                                "</tr>";
                        }
                        $("table tbody").append(htmlText);
                        $("#nowPage").text(parseInt($("#nowPage").text())+1);
                    }
                });
            }
        }

        // 跳页
        skipPage = function (condition) {
            var re = new RegExp("^[0-9]*[1-9][0-9]*$");
            var page = $("#skipPage").val();
            if (page!=""){
                if (re.test(page)){
                    $.ajax({
                        url:"${context}/admin/selectMedDietByPageOrConditon",
                        type:"post",
                        data:JSON.stringify({"page":parseInt($("#skipPage").val()-1),"condition":$("input[name='hidden_condition']").val()}),
                        contentType:"application/json",
                        success:function (data) {
                            data = data.MedicinalDietTableList;
                            var htmlText = "";
                            $("table tbody").empty();
                            for(var i=0;i<data.length;i++){
                                htmlText += "<tr>" +
                                    "<td><input type='checkbox' lay-skin='primary' value='"+data[i].medicinalDietId+"'></td>" +
                                    "<td><a href='javascript:;' onclick='showMedDietInfo("+data[i].medicinalDietId+")'>"+data[i].medicinalDietId+"</a></td>" +
                                    "<td>"+data[i].medDietName+"</td>" +
                                    "<td>"+data[i].medDietEfficacy+"</td>" +
                                    "<td>"+data[i].medDietOrigin+"</td>" +
                                    "<td><a href='javascript:;' onclick='showPublisherInfo("+data[i].medicinalPubId+")'>"+data[i].medicinalPubId+"</a></td>" +
                                    "<td>"+data[i].medEffiCate+"</td>" +
                                    "<td>"+data[i].medShapeCate+"</td>" +
                                    "<td>"+data[i].medMakeCate+"</td>" +
                                    "<td>" +
                                    "<a style='cursor:pointer;'><i title='编辑药膳信息' onclick='editMedDietInfo("+data[i].medicinalDietId+")' class='layui-icon layui-icon-edit'></i></a>" +
                                    "<a style='cursor:pointer;'><i title='添加制作流程' onclick='addMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-add-1'></i></a>" +
                                    "<a style='cursor:pointer;'><i title='查看制作流程' onclick='showMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-search'></i></a>" +
                                    "<a style='cursor:pointer;'><i title='删除制作流程' onclick='deleteMedDietProcess("+data[i].medicinalDietId+")' class='layui-icon layui-icon-close'></i></a>" +
                                    "<a style='cursor:pointer;'><i title='删除药膳信息' onclick='deleteMedicinalInfo(this,"+data[i].medicinalDietId+")' class='layui-icon layui-icon-delete'></i></a>" +
                                    "</td>" +
                                    "</tr>";
                            }
                            $("table tbody").append(htmlText);
                            $("#nowPage").text(parseInt($("#skipPage").val()));
                        }
                    });
                }else {
                    layer.msg("请输入正确的数字",{icon:5,time:1300});
                }
            }else {
                layer.msg("请输入页数!",{icon:5,time:1300});
                return;
            }
        }

        //删除
        deleteMedicinalInfo = function (obj,id) {
            if (id==""){
                if($("tbody input[type=checkbox]:checked").length>=1){
                    $("tbody input[type=checkbox]:checked").each(function(){
                        id = id+ $(this).val()+";";
                    });
                }else{
                    layer.msg("请选中一行!",{icon:0,time:1300});
                    return;
                }
            }
            layer.confirm("确认要删除吗？",function(index){
                layer.close(index);
                $.ajax({
                    type: "POST",
                    url:"${context}/admin/deleteMedicinalInfo",
                    data:JSON.stringify({"id":id}),
                    contentType: "application/json",
                    success: function(data){
                        layer.msg(data,{icon:1,time:1000});
                    }
                });
            });
        }

        // 添加制作流程
        addMedDietProcess = function (id) {
            layer.open({
                type: 2,
                title: "添加制作流程",
                area: ['500px','230px'],
                fixed: false,
                maxmin: false,
                content:"${context}/jsp/admin/am_process_add.jsp?id="+id,
                success:function(dom){
                    $(dom[0]).find("iframe").eq(0).contents().find("#medicinalId").val(id);
                }
            });
        }
        // 查看制作流程
        showMedDietProcess = function (id) {
            $.ajax({
                url:"${context}/admin/selectMedicinalImage",
                type:"post",
                data:JSON.stringify({"id":id}),
                contentType:"application/json",
                success:function (data) {
                    console.log(data);
                    data = data.ImageTableList;
                    var htmlText = "";
                    for (var i=0;i<data.length;i++){
                        htmlText += "<div style='margin:2%;'>" +
                            "<h3>"+data[i].imageExplain+"</h3>" +
                            "<div style='margin-top:1%;'><img src='${context}"+data[i].imageAddress+"'></img></div>" +
                            "</div>";
                    }
                    layer.open({
                        type: 1,
                        title: "查看制作流程",
                        area: ['500px','500px'],
                        fixed: false,
                        maxmin: false,
                        content:htmlText,
                    });
                }
            });
        }
        //删除制作流程
        deleteMedDietProcess = function(id){
            $.ajax({
                url:"${context}/admin/deleteImageInfo",
                type:"post",
                data:JSON.stringify({"id":id}),
                contentType:"application/json",
                success:function (data) {
                    layer.msg(data,{time:1300},function () {
                        window.parent.location.reload();
                    })
                }
            });
        }
    });
</script>
</body>
</html>
