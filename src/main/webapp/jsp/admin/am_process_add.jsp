<%--
  Created by IntelliJ IDEA.
  User: ClownJJ
  Date: 2019/4/29
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${context}/static/plugins/layui/css/layui.css" rel="stylesheet" media="all"/>
</head>
<body>
    <div>
        <input type="hidden" id="medicinalId">
        <input type="hidden" id="imgSrcs">
        <div style="margin-right:2%;margin-top:2%;">
            <div class="layui-form-item">
                <label class="layui-form-label">文字说明</label>
                <div class="layui-input-block"><input type="text" class="layui-input"></div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">图片说明</label>
                <div class="layui-input-block">
                    <div class="layui-upload">
                        <input type="button" class="layui-btn layui-btn-normal" name="upload" value="选择文件">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <center><input class="layui-btn" type="button" onclick="submitProcessDivInfo()" value="提交"></center>
<script type=text/javascript src=${context}/static/plugins/layui/layui.js></script>
<script>
    layui.use(["element", "jquery", "layer", "upload"], function () {
        var element = layui.element;
        var jquery, $ = layui.jquery;
        var layer = layui.layer;
        var upload = layui.upload;

        upload.render({
            elem: $("input[name='upload']"),
            url: '${context}/admin/uploadImg',
            done: function(res) {
                console.log(res);
                if (res.code > 0) {
                    return layer.msg(res.msg);
                }else{
                    layer.msg(res.msg);
                    $("#imgSrcs").val(res.src);
                }
            }
        });

        submitProcessDivInfo = function () {
            var num = 1;
            var explains = "";
            $(":text").each(function () {
                explains = explains + num + "."+$(this).val();
                num +=1;
            });
            $.ajax({
                url:"${context}/admin/addImagesInfo",
                type:"post",
                data:JSON.stringify({"srcs":$("#imgSrcs").val(),"explains":explains,"goodsId":$("#medicinalId").val()}),
                contentType:"application/json",
                success:function (data) {
                    layer.msg(data,{time:1300},function () {
                        window.parent.location.reload();
                    });
                }
            });
        }
    });
</script>
</body>
</html>
