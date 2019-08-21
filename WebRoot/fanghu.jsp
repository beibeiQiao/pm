<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>PM2.5防护</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <link rel="stylesheet" href="css/main.css" type="text/css"/>
	<link rel="stylesheet" href="css/fanghu.css" type="text/css"/>
  <script type="text/javascript" src="js/jquery.min.js"></script></head>
  
  <body>
  <div class="menu_width">
         <div class="menu">
              <div class="menu_logo"><a href="/"></a></div>
              <ul class="menu_list">
                    <!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
                    <li class="menu_1"><a href="<%=basePath%>ServletQueryAqi?name=station2"><i></i><span>首页</span></a></li>
                    <li class="menu_2"><a href="rank.jsp"><i></i><span>地区数据</span></a></li>
                    <li class="menu_3"><a href="<%=basePath%>ServletQueryAllData?name=station1"><i></i><span>历史数据</span></a></li>
                    <li class="menu_4"><a class="current" href="fanghu.jsp"><i></i><span>PM2.5防护</span></a></li>
                    <li class="menu_5"><a href="aboutUs.jsp"><i></i><span>关于我们</span></a></li>
                    <div class="clear"></div>
              </ul>
         </div>   
  </div>
  
  <div class="main_width">
    <div class="pm_overview" >
	<div class="overview">
		<div class="pm">
			<div class="pm_title">
				<p>拒绝PM2.5，<br>对雾霾say No!</p>
			</div>
			<div class="pm_notes">
				<p>雾霾毒害重重，我们给你支招，这里有最贴心最全面的防护手册，为你的衣食住行支招护航。我们和你一样，热爱生活，热爱自然，期待与你一起关注PM2.5，重视PM2.5，重视我们每天的呼吸！</p>
			</div>
		</div>
		<div class="protect">
			<div class="pr12">
			<div class="protect1">
				<img src="images/kouzhao.png"/>
				<p>防霾装备</p>
			</div>
			<div class="protect2">
				<img src="images/shanyao.png"/>
				<p>清肺饮食</p>
			</div>
			</div>
			<div class="pr34">
			<div class="protect3">
				<img src="images/sports.png"/>
				<p>运动出行</p>
			</div>
			<div class="protect4">
				<img src="images/ill.png"/>
				<p>疾病预防</p>
			</div>
			</div>
		</div>
	</div>
	</div>
<div class="main">
	<div class="pro">
		<div class="pr1">
		<div class="title">防霾装备</div>
		<div class="box">
			<div class="pr1_1">
				<div class="proimg">
					<img src="images/plant.png"/>
				</div>
				<div class="protext">
				<div class="protitle">植物吸霾？</div>
				<div class="procontext">在家里摆放植物可以美化环境、改善心情，
				但是并没有商家宣称的去除PM2.5、吸收电磁辐射等特别的功能。
				我们在选择家居植物时，应该按照自己的喜好和样式搭配来选择，
				而不要对这些特殊的功能抱有太多期望。</div>
				</div>
			</div>
			<div class="pr1_2">
				<div class="proimg">
					<img src="images/kouzhao.png"/>
				</div>
				<div class="protext">
				<div class="protitle">防霾口罩怎么选？</div>
				<div class="procontext">专业的防PM2.5口罩最好是选带有呼吸阀的，
				因为相比全封闭的口罩来说，其呼吸阻力小一些，普通人戴上没那么吃力。
				其次，口罩也不一定非选N95系列的，一般PM2.5口罩分为3个等级，
				90%、95%、99%，防护等级越高，也就意味着对正常呼吸的阻力越大，
				呼吸越困难。所以，对于平时上下班、偶尔外出戴戴的人来说，
				N90的也足够用了，呼吸也会顺畅一些。</div>
				</div>
			</div>
		</div>
		</div>
		<div class="pr2">
		<div class="title">清肺饮食</div>
		<div class="box">
			<div class="pr2_1">
				<div class="proimg">
					<img src="images/rest.png"/>
				</div>
				<div class="protext">
				<div class="protitle">抗氧化食物 增强身体免疫力</div>
				<div class="procontext">中医师辛重毅强调，面对PM2.5来势汹汹，
				人体本身就有一定的修护能力和免疫力，而良好的作息、均衡的饮食，
				以及规律的运动习惯，是建立自我修护和提升免疫力的基本要求。</div>
				<div class="procontext">建议平常可以适量摄取一些抗氧化食
				物来帮助身体对抗外来毒物，例如：姜黄、十字花科蔬菜、
				绿茶、蓝莓、红石榴、番石榴等，但切忌因噎废食，
				当作日常饮食的一部份就好，过度或大量摄食导致饮食不均，
				对身体并没有益处。</div>
				</div>
			</div>
			<div class="pr2_2">
				<div class="proimg">
					<img src="images/nose.png"/>
				</div>
				<div class="protext">
				<div class="protitle">中医护鼻</div>
				<div class="procontext">医说，“肺开窍于鼻”，养肺应先护鼻。
				雾霾天应尽量待在家中，外出时最好戴上口罩，回来后尽快用
				温水或淡盐水洗鼻，以提高鼻子的抵抗力，起到杀菌作用，
				为鼻子提供适宜的湿度和温度。</div>
				<div class="procontext">自我按摩迎香穴，可增强鼻部血液循环，
				提升鼻部抵抗力。具体的做法是：双手搓热后用食指或中指在鼻翼
				旁边的迎香穴处上下干搓5分钟，有轻微酸胀感即可。</div>
				</div>
			</div>
		</div>
		</div>
		<div class="pr3">
		<div class="title">运动出行</div>
		<div class="box">
			<div class="pr3_1">
				<div class="proimg">
					<img src="images/sports1.png"/>
				</div>
				<div class="protext">
				<div class="protitle">雾霾天室内运动？</div>
				<div class="procontext">空气中的雾霾究竟有多高不一定代表我们人能呼吸到的量，
				基本上室外雾霾的浓度要比室内高得多。但是室内也会有雾霾，
				我们建议雾霾天气少出门，在家里也应该尽量少做剧烈活动</div>
				<div class="procontext">吸入雾霾的量，一方面是和浓度有关系，
				另外一方面是和呼吸量有关系，活动强度比较大的时候，
				呼吸量比较大，吸入人体中的量就比较大。如果说雾霾天不出去，
				大家在家里跑跑步，或者干一些比较重的活儿，我们也不建议，
				这样吸到人体当中的雾霾的量会相对增加。</div>
				</div>
			</div>
		</div>
		</div>
		<div class="pr4">
		<div class="title">疾病预防</div>
		<div class="box">
			<div class="pr4_1">
				<div class="proimg">
					<img src="images/eyes.png"/>
				</div>
				<div class="protext">
				<div class="protitle">雾霾中眼睛防护</div>
				<div class="procontext">眼睛本身没有任何问题，短期内接触一定量的颗粒物，
				并不会像沙子进入眼睛一样马上感到不适，而且眼睛有自净功能，
				眼表一旦有颗粒物，人体可以通过眨眼、分泌泪液来清除。
				在眼睛没有不适的情况下，即使雾霾天也是可以佩戴隐形眼镜的，
				不过一定要注意保养和清洁。</div>
				<div class="procontext">严重雾霾天，需要长时间呆在户外，
				比如骑车上下班，最好加强对眼部的保护，
				尽量不要佩戴隐形眼镜。因为空气中的颗粒物质大量粘附在镜片上，
				镜片受到污染会导致很多眼部问题。</div>
				</div>
			</div>
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
                  <a href="fanghu.jsp">PM2.5百科</a><br>
                 </dd>
              </dl>
               <dl class="footer_left_item2"> 
                   <dt>PM2.5资讯</dt>
                 <dd>
                  <a href="<%=basePath%>ServletQueryAllData?name=station1" target="_blank">历史数据</a><br>
                  <a href="fanghu.jsp" target="_blank">PM2.5防护</a><br>
                  <a href="aboutUs.jsp" target="_blank">关于我们</a><br>
                 </dd>
              </dl>
               
              <div class="clear"></div>
            </div>
                                               </div>
          
          <div class="footer_right">
                   <a class="footer_logo" href=""></a>
				<p class="footer_aboutus"></p>
               <p class="footer_email">意见建议：412854858@qq.com</p>
               
          </div>
          <div class="clear"></div>
     </div>
</div>
</div>
</body>
</html>
