<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ClownJJ
  Date: 2019/4/25
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="icon" href="${context}/static/images/common/网站icon.png" type="image/x-icon">
    <link href="${context}/static/plugins/layui/css/layui.css" rel="stylesheet" media="all"/>
</head>
<body style="padding-top: 2%;">
<form class="layui-form" style="margin-right: 2%;" action="" method="post" >
    <div class="layui-form-item">
        <label class="layui-form-label">药膳Id</label>
        <div class="layui-input-block">
            <input type="text" name="medicinalDietId" readonly autocomplete="off" class="layui-input" value="${MedicinalDietTable.medicinalDietId}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">药膳名称</label>
        <div class="layui-input-block">
            <input type="text" name="medDietName" autocomplete="off" class="layui-input" value="${MedicinalDietTable.medDietName}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">药膳来源</label>
        <div class="layui-input-block">
            <input type="text" name="medDietOrigin" class="layui-input" value="${MedicinalDietTable.medDietOrigin}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">药膳组成</label>
        <div class="layui-input-block">
            <input type="text" name="medDietConstitute" autocomplete="off" class="layui-input" value="${MedicinalDietTable.medDietConstitute}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用法</label>
        <div class="layui-input-block">
            <input type="text" name="medDietPreparation" autocomplete="off" class="layui-input" value="${MedicinalDietTable.medDietPreparation}">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">功效</label>
            <div class="layui-input-inline">
                <input type="tel" name="medDietEfficacy" autocomplete="off" class="layui-input"  value="${MedicinalDietTable.medDietEfficacy}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">功效类</label>
            <div class="layui-input-inline">
                <select name="medEffiCate" lay-search="">
                    <option value="解表类" <c:if test="${MedicinalDietTable.medEffiCate eq '解表类'}">selected</c:if>>解表类</option>
                    <option value="清热类" <c:if test="${MedicinalDietTable.medEffiCate eq '清热类'}">selected</c:if>>清热类</option>
                    <option value="泻下类" <c:if test="${MedicinalDietTable.medEffiCate eq '泻下类'}">selected</c:if>>泻下类</option>
                    <option value="温里祛寒类" <c:if test="${MedicinalDietTable.medEffiCate eq '温里祛寒类'}">selected</c:if>>温里祛寒类</option>
                    <option value="祛风湿类" <c:if test="${MedicinalDietTable.medEffiCate eq '祛风湿类'}">selected</c:if>>祛风湿类</option>
                    <option value="利水祛湿类" <c:if test="${MedicinalDietTable.medEffiCate eq '利水祛湿类'}">selected</c:if>>利水祛湿类</option>
                    <option value="化痰止咳平喘类" <c:if test="${MedicinalDietTable.medEffiCate eq '化痰止咳平喘类'}">selected</c:if>>化痰止咳平喘类</option>
                    <option value="消食解酒类" <c:if test="${MedicinalDietTable.medEffiCate eq '消食解酒类'}">selected</c:if>>消食解酒类</option>
                    <option value="理气类" <c:if test="${MedicinalDietTable.medEffiCate eq '理气类'}">selected</c:if>>理气类</option>
                    <option value="理血类" <c:if test="${MedicinalDietTable.medEffiCate eq '理血类'}">selected</c:if>>理血类</option>
                    <option value="安神类" <c:if test="${MedicinalDietTable.medEffiCate eq '安神类'}">selected</c:if>>安神类</option>
                    <option value="平肝潜阳类" <c:if test="${MedicinalDietTable.medEffiCate eq '平肝潜阳类'}">selected</c:if>>平肝潜阳类</option>
                    <option value="固涩类" <c:if test="${MedicinalDietTable.medEffiCate eq '固涩类'}">selected</c:if>>固涩类</option>
                    <option value="补益类" <c:if test="${MedicinalDietTable.medEffiCate eq '补益类'}">selected</c:if>>补益类</option>
                    <option value="养生保健类" <c:if test="${MedicinalDietTable.medEffiCate eq '养生保健类'}">selected</c:if>>养生保健类</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">应用</label>
        <div class="layui-input-block">
            <input type="text" name="medDietApplication" autocomplete="off" class="layui-input"  value="${MedicinalDietTable.medDietApplication}">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">方解</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" name="medDietExplain" class="layui-textarea">${MedicinalDietTable.medDietExplain}</textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">形态类</label>
        <div class="layui-input-block">
            <input type="radio" name="medShapeCate" value="菜肴类" title="菜肴类" <c:if test="${MedicinalDietTable.medShapeCate eq '菜肴类'}">checked</c:if>>
            <input type="radio" name="medShapeCate" value="粥食类" title="粥食类" <c:if test="${MedicinalDietTable.medShapeCate eq '粥食类'}">checked</c:if>>
            <input type="radio" name="medShapeCate" value="糖点类" title="糖点类" <c:if test="${MedicinalDietTable.medShapeCate eq '糖点类'}">checked</c:if>>
            <input type="radio" name="medShapeCate" value="饮料类" title="饮料类" <c:if test="${MedicinalDietTable.medShapeCate eq '饮料类'}">checked</c:if>>
            <input type="radio" name="medShapeCate" value="其他" title="其他" <c:if test="${MedicinalDietTable.medShapeCate eq '其他'}">checked</c:if>>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">制法类</label>
        <div class="layui-input-inline">
            <select name="medMakeCate"  lay-search=""> <%-- 必填设置 lay-verify="required" --%>
                <option value="炖" <c:if test="${MedicinalDietTable.medMakeCate eq '炖'}">selected</c:if>>炖</option>
                <option value="煮" <c:if test="${MedicinalDietTable.medMakeCate eq '煮'}">selected</c:if>>煮</option>
                <option value="熬" <c:if test="${MedicinalDietTable.medMakeCate eq '熬'}">selected</c:if>>熬</option>
                <option value="煨" <c:if test="${MedicinalDietTable.medMakeCate eq '煨'}">selected</c:if>>煨</option>
                <option value="蒸" <c:if test="${MedicinalDietTable.medMakeCate eq '蒸'}">selected</c:if>>蒸</option>
                <option value="炒" <c:if test="${MedicinalDietTable.medMakeCate eq '炒'}">selected</c:if>>炒</option>
                <option value="炸" <c:if test="${MedicinalDietTable.medMakeCate eq '炸'}">selected</c:if>>炸</option>
                <option value="烧" <c:if test="${MedicinalDietTable.medMakeCate eq '烧'}">selected</c:if>>烧</option>
                <option value="拌" <c:if test="${MedicinalDietTable.medMakeCate eq '拌'}">selected</c:if>>拌</option>
                <option value="腌" <c:if test="${MedicinalDietTable.medMakeCate eq '腌'}">selected</c:if>>腌</option>
                <option value="冻" <c:if test="${MedicinalDietTable.medMakeCate eq '冻'}">selected</c:if>>冻</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">使用注意</label>
        <div class="layui-input-block">
            <input type="text" name="medDietPrecautions" autocomplete="off" class="layui-input" value="${MedicinalDietTable.medDietPrecautions}">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" type="submit">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
</body>

<script type="text/javascript" src="${context}/static/plugins/layui/layui.js"></script>
<script>
    layui.use(['element', 'jquery', 'layer', 'form'], function () {
        var element = layui.element;
        var jquery, $ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;

        $("form").submit(function(){
            var form_data={};
            $.each($("form").serializeArray(),function () {
                form_data[this.name]=this.value;
            })
            $.ajax({
                url:"${context}/admin/editMedicinalInfo",
                type:"post",
                data:JSON.stringify(form_data),
                contentType:"application/json",
                success:function(msg){
                    console.log(msg);
                    alert(msg);
                    top.location.reload();
                }
            });
        });
    });
</script>
</html>
