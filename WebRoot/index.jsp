<%@page import="MLR.MLR"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
MLR s = new MLR();
double f = s.zong();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="css/index.css" type="text/css"/>
    <script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
  <link rel="stylesheet" href="css/main.css" type="text/css"/>
  <script type="text/javascript" src="js/echarts.js"></script>
  <script type="text/javascript" src="js/beijing.js"></script>
  <script type="text/javascript" src="js/china.js"></script>
</head>
  
  <body>
  <div class="menu_width">
         <div class="menu">
              <div class="menu_logo"><a href="/"></a></div>
              <ul class="menu_list">
                    <!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
                    <li class="menu_1"><a class="current" href="<%=basePath%>ServletQueryAqi?name=station2"><i></i><span>首页</span></a></li>
                    <li class="menu_2"><a  href="<%=basePath%>ServletQueryDay"><i></i><span>地区数据</span></a></li>
                    <li class="menu_3"><a href="<%=basePath%>ServletQueryAllData?name=station1"><i></i><span>历史数据</span></a></li>
                    <li class="menu_4"><a href="fanghu.jsp"><i></i><span>PM2.5防护</span></a></li>
                    <li class="menu_5"><a href="aboutUs.jsp"><i></i><span>关于我们</span></a></li>
                    <div class="clear"></div>
              </ul>
         </div>   
</div>
<!-- 放你的东西 -->
<div class="main_width">
    <div class="district_overview">
    <div class="overview">
		<div class="district">
			<div class="choose_district">
				<button class="choose">&nbsp;+&nbsp;</button>
				<div class="thisdistrict">定陵</div>
				<div class="districts">
					<input id="ipt" type="text" placeholder="请选择监测点" />
				<ul id="ul"
					style="margin-left:100px;list-style:none;width:150px;border:1px solid #000;display:none;">
					<li><a href="<%=basePath%>ServletQueryAqi?name=station1">万寿西宫</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station2">定陵</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station3">东四</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station4">天坛</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station5">农展馆</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station6">官园</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station7">海淀区万柳</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station8">顺义新城</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station9">怀柔镇</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station10">昌平镇</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station11">奥体中心</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAqi?name=station12">古城</a>
					</li>
				</ul>
				<script type="text/javascript">
					var ipt=document.getElementById('ipt');
					var ul=document.getElementById('ul');
					var lis=ul.children;
					ipt.onfocus=function(){
						ul.style.display='block';
					}
					ipt.onblur=function(){
						setTimeout(function(){
							ul.style.display='none';
						},200)
						
					}
					//模拟option点击事件
					for(var i=0;i<lis.length;i++){
						lis[i].onclick=function(){
							ipt.value=this.innerText;
						}
					}
				  </script>
				</div>
			</div>
			<div class="notes">
				<div class="time">数据更新时间：2019-04-05</div>
				<div class="unit">数值单位：μg/m3(CO为mg/m3)</div>
			</div>
		</div>
		<hr class="hr">
		<div class="air_details">
			<div class="aqi">
				<p class="num" id="aqinum">121</p>
				<p class="name">AQI指数</p>
			</div>
			<div class="pm25">
				<p class="num" id="pm25num">103</p>
				<p class="name">PM2.5</p>
			</div>
			<div class="pm10">
				<p class="num" id="pm10num">29</p>
				<p class="name">PM10</p>
			</div>
			<div class="co">
				<p class="num" id="conum">0.65</p>
				<p class="name">CO</p>
			</div>
			<div class="no2">
				<p class="num" id=no2num>40</p>
				<p class="name">NO2</p>
			</div>
			<div class="o3">
				<p class="num" id="o3num">88</p>
				<p class="name">O3</p>
			</div>
			<div class="so2">
				<p class="num" id="so2num">5</p>
				<p class="name">SO2</p>
			</div>
		</div>
		<div class="content">
			<p>首要污染物： 颗粒物(PM10)</p><br>
			<p>对健康影响情况： 空气质量可接受,但某些污染物可能对极少数异常敏感人群健康有较弱影响</p><br>
			<p>建议采取的措施： 极少数异常敏感人群应减少户外活动</p><br>
		</div>
	</div>
	</div>
<div class="main">
	<div class="district_details">
		<div class="predit">
			<div class="predit_title">明日预测</div>
			<hr>
			<div class="predit_content">
				<div class="grade"><p>优</p></div>
				<div class="predit_notes">
					<p>首要污染物：PM2.5</p><br>
					<p>污染级别：低</p><br>
					<p>空气质量：优</p>
				</div>
			</div>
			<div class="grade_img">
				<img src="images/grade.png" class="grade_img"/>
			</div>
			<div class="tips">
				<p>温馨提示:外出记得做好防晒工作</p>
			</div>
		</div>
		</div>
			<div class="pm_grade">
		<div class="choose_grade">
			<ul>
				<li id="g1">优</li>
				<li id="g2">优良</li>
				<li id="g3">良</li>
				<li id="g4">中</li>
				<li id="g5">差</li>
				<li id="g6">极差</li>
			</ul>
		</div>
		<div class="grades">
		<div class="gra">
			<table>
				<tr><td>级别</td><td class="gname">优</td></tr>
				<tr><td>指数</td><td class="gnum">0~35</td></tr>
				<tr><td>对健康的影响</td><td class="ginfo">空气质量令人满意，基本无空气污染</td></tr>
				<tr><td>应对措施</td><td class="gtip">各类人群可正常活动</td></tr>
			</table>
		</div>
		</div>
	</div>
</div>
<div class="footer_width">
       <div class="footer">
                <div class="footer_left">
                <div class="footer_left_links">
                <dl class="footer_left_item1"> 
                   <dt>快捷导航</dt>
                 <dd>
                    <a href="rank.jsp">PM2.5实时查询</a><br>
                  <a href="rank.jsp">北京污染地图</a><br>
                  <a href="/news/cat/20">PM2.5百科</a><br>
                 </dd>
              </dl>
               <dl class="footer_left_item2"> 
                   <dt>PM2.5资讯</dt>
                 <dd>
                  <a href="history_wanshou.jsp" target="_blank">历史数据</a><br>
                  <a href="/news/cat/14" target="_blank">PM2.5防护</a><br>
                  <a href="aboutUs.jsp" target="_blank">关于我们</a><br>
                 </dd>
              </dl>
               
              <div class="clear"></div>
            </div>
                                               </div>
          
          <div class="footer_right">
                   <a class="footer_logo" href=""></a>
				<p class="footer_aboutus"></p>
               <!-- <p class="footer_aboutus"><a href="/about.html" target="_blank">关于我们</a>&nbsp;|&nbsp;<a href="/about.html#feedback" target="_blank">联系我们</a>|&nbsp;<a href="/about/company" target="_blank">网站简介</a></p> -->
               <p class="footer_email">意见建议：412854858@qq.com</p>
               <p class="footer_icons">
                    <span>关注我们：</span>
                <a class="footer_icons_sina" title="新浪微博" href="http://weibo.com/u/5108207785" target="_blank"><i></i></a>
                <a class="footer_icons_baidu" title="百度贴吧" href="http://tieba.baidu.com/f?kw=pm25" target="_blank"><i></i></a>
                <a class="footer_icons_douban" title="豆瓣小站" href="http://www.douban.com/people/pm25cx/" target="_blank"><i></i></a>
              </p>   
          </div>
          <div class="clear"></div>
     </div>
</div>
</div>
  	<!-- ECharts单文件引入 -->
    <script src="js/echarts.js"></script>
    <script type="text/javascript">
         var aqi = ${aqidataList[0].AQI}
         var pm25 = ${aqidataList[0].PM25}
         var pm10 = ${aqidataList[0].PM10}
         var no2 = ${aqidataList[0].NO2}
         var co = ${aqidataList[0].CO}
         var so2 = ${aqidataList[0].SO2}
         var o3 = ${aqidataList[0].o3}
         var station = "${aqidataList[0].station}"
         $("#aqinum").html(aqi);
         $("#pm25num").html(pm25);
         $("#pm10num").html(pm10);
         $("#no2num").html(no2);
         $("#conum").html(co);
         $("#so2num").html(so2);
         $("#o3num").html(o3);
         $(".thisdistrict").html(station);   
    </script>
    <script type="text/javascript">
    $(document).ready(function() {
    	var myDate=new Date();
    	$(".time").html("更新时间："+myDate);
    	
    	
    	var random=Math.ceil(Math.random()*100)-50; 
		var pv = aqi+random;
		//var pv = "<%=f%>";
		changePoint(pv);
	});
	function changePoint(pv){
		if(pv<35){
			$(".grade").css("background-color","rgba(21,160,24,0.65)");
			$(".grade p").html("优");
			$(".district_overview").css("background-image","url(./images/w1.png)").css("background-size","100% 100%");
		}else if(pv<75){
			$(".grade").css("background-color","rgba(234,243,142,0.82");
			$(".grade p").html("优良");
			$(".district_overview").css("background-image","url(./images/w2.png)").css("background-size","100% 100%");
		}else if(pv<115){
			$(".grade").css("background-color","rgba(244,166,106,0.79)");
			$(".grade p").html("良");
			$(".district_overview").css("background-image","url(./images/w3.png)").css("background-size","100% 100%");
		}else if(pv<150){
			$(".grade").css("background-color","rgba(240,133,135,0.86)");
			$(".grade p").html("中");
			$(".district_overview").css("background-image","url(./images/w4.png)").css("background-size","100% 100%");
		}else if(pv<250){
			$(".grade").css("background-color","rgba(211,100,221,0.75)");
			$(".grade p").html("差");
			$(".district_overview").css("background-image","url(./images/w5.png)").css("background-size","100% 100%");
		}else{
			$(".grade").css("background-color","rgba(112,30,154,0.73)");
			$(".grade p").html("极差");
			$(".district_overview").css("background-image","url(./images/w6.png)").css("background-size","100% 100%");
		}
	}
$(function changegrade() {
        $('.choose_grade li').click(function () {
            if(this.id=="g1"){
            	$(".gra").css("background-color","rgba(21,160,24,0.65)");
     			$(".gname").html("优");
     			$(".gnum").html("0~35");
     			$(".ginfo").html("空气质量令人满意，基本无空气污染");
     			$(".gtip").html("各类人群可正常活动");
            }else if(this.id=="g2"){
            	$(".gra").css("background-color","rgba(234,243,142,0.82)");
     			$(".gname").html("优良");
     			$(".gnum").html("35~75");
     			$(".ginfo").html("空气质量可接受，但某些污染物可能对极少异常敏感人群健康有较弱影响");
     			$(".gtip").html("极少数异常敏感人群减少户外活动");
            }else if(this.id=="g3"){
            	$(".gra").css("background-color","rgba(244,166,106,0.79)");
     			$(".gname").html("良");
     			$(".gnum").html("75~115");
     			$(".ginfo").html("易感人群症状有轻度加剧，健康人群出现刺激症状");
     			$(".gtip").html("儿童、老年人及心脏病、呼吸系统疾病患者应减少长时间、高强度的户外锻炼");
            }else if(this.id=="g4"){
            	$(".gra").css("background-color","rgba(240,133,135,0.86)");
     			$(".gname").html("中");
     			$(".gnum").html("115~150");
     			$(".ginfo").html("进一步加剧易感人群症状，可能对健康人群心脏、呼吸系统有影响");
     			$(".gtip").html("儿童、老年人及心脏病、呼吸系统疾病患者避免长时间、高强度的户外锻炼，一般人群适量减少户外运动");
            }else if(this.id=="g5"){
            	$(".gra").css("background-color","rgba(211,100,221,0.75)");
     			$(".gname").html("差");
     			$(".gnum").html("150~250");
     			$(".ginfo").html("心脏病和肺病患者症状显著加剧，运动耐受力降低，健康人群普遍出现症状");
     			$(".gtip").html("儿童、老年人和心脏病、肺病患者应停留在室内，停止户外运动，一般人群减少户外运动");
            }else{
            	$(".gra").css("background-color","rgba(112,30,154,0.73)");
     			$(".gname").html("极差");
     			$(".gnum").html("250以上");
     			$(".ginfo").html("健康人群运动耐受力降低，有明显强烈症状，提前出现某些疾病");
     			$(".gtip").html("儿童、老年人和病人应当留在室内，避免体力消耗，一般人群应避免户外活动sss");
            }
        })
    })
</script>
</body>
</html>
