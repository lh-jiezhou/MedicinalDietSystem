layui.define(['jquery','laydate','layedit','slider','element','colorpicker','upload','rate','carousel','flow','util','code','form'],
	function(exports) {
		var $=layui.jquery,form=layui.form,element=layui.element,laydate=layui.laydate,
			layedit=layui.layedit,slider=layui.slider,element=layui.element,colorpicker=layui.colorpicker,
			upload=layui.upload,rate=layui.rate,carousel=layui.carousel,flow=layui.flow,util=layui.util;
		var obj = {
			rebuildLayUiControls:function () {
				var _t = this;
				form.render();
				element.init();
				//日期
				$(".magicalcoder-laydate").each(function (idx, item) {
					laydate.render(_t.iteratorAttr({elem:item},item))
				})
				//富文本
				$(".magicalcoder-layedit").each(function (idx, item) {
					var mcDataId = $(item).attr("id");
					if(mcDataId){
						layedit.build(mcDataId,{
							height : 300
						});
					}
				})
				//外键
				$(".magicalcoder-foreign-select2").each(function (idx, item) {
					var mcDataId = $(item).attr("id");
					if(mcDataId){
						$("#"+mcDataId).select2({
							allowClear :  true,//必须设置placeholder 否则报错
							width : "150px",
							delay : 500,//等待500ms才触发
						});
					}
				})
				//颜色选择器
				$(".magicalcoder-color-picker").each(function (idx, item) {
					colorpicker.render(_t.iteratorAttr({elem:$(item)},item))
				})
				//上传组件
				{
					$(".magicalcoder-layupload").each(function (idx, item) {
						upload.render(_t.iteratorAttr({elem:$(item)},item))
					})
				}
				//滑块
				{
					$(".magicalcoder-slider").each(function (idx, item) {
						slider.render(_t.iteratorAttr({elem:$(item)},item))
					})
				}
				//评分
				{
					$(".magicalcoder-rate").each(function (idx, item) {
						rate.render(_t.iteratorAttr({elem:$(item)},item))
					})
				}
				//轮播
				{
					$(".layui-carousel").each(function (idx, item) {
						carousel.render(_t.iteratorAttr({elem:$(item)},item))
					})
				}
				//流加载
				{
					$(".magicalcoder-flow").each(function (idx, item) {
						flow.load(_t.iteratorAttr({elem:$(item)},item))
					})
				}
				//工具集
				/*{
					$("[mc-type='util']").each(function (idx, item) {
						util.render(_t.iteratorAttr({elem:$(item)},item))
					})
				}*/
				//代码
				{
					$(".magicalcoder-code").each(function (idx, item) {
						layui.code(_t.iteratorAttr({elem:$(item)},item))
					})
				}
			},
			iteratorAttr:function (renderConfig,dom) {
				var attrs = dom.attributes;
				for(var i=0;i<attrs.length;i++){
					var attr = attrs[i];
					var name = attr.name;
					var value = attr.value;
					if(name.indexOf("mc-")==0){
						name = name.replace("mc-attr-",'')
						name = name.replace("mc-event-",'')
						value=='true'?value=true:value=value;
						value=='false'?value=false:value=value;
						renderConfig[this.htmlAttrNameToTuoFeng(name)]=value
					}
				}
				return renderConfig;
			},
			htmlAttrNameToTuoFeng:function (name) {//userName -> user-name
				var arr = name.split("-")
				var newArr = []
				for(var i in arr){
					if(i!=0){
						if(arr[i]!=''){
							newArr.push(this.firstCharToUpLower(arr[i]));
						}
					}else {
						newArr.push(arr[i]);
					}
				}
				return newArr.join('');
			},
			firstCharToUpLower:function (name) {//首字母大写
				var arr = name.split("");
				arr[0] = arr[0].toUpperCase();
				return arr.join('')
			}
		}
		$("body").find("svg").remove();
		if($("body").children().length<=0){
			//读取本地域名下缓存的数据
			if (typeof window.localStorage=='object'){//支持缓存
				var CACHE_KEY_USER_DATA = "layuioutUserData"
				var html = localStorage.getItem(CACHE_KEY_USER_DATA);
				$("body").html(html)
			}
		}
		//初始化控件
		obj.rebuildLayUiControls();
		exports('magicalcoder_layuiout',obj);
	});
