<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>	
<html>
<head>
	<title>闪黑首页</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/demo2.css"/>
		<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
		<link rel="stylesheet" href="css/bootstrap.css" />
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
</head>
<body>
<jsp:include page="head.jsp"/>

<!-- 主体开始 -->
	
<!--
    	作者：offline
    	时间：2018-06-21
    	描述：轮播图
    -->
<div id="carousel-ad" class="carousel slide" data-ride="carousel" data-interval="2000" align="center" width="100%" height="448px">
        <ol class="carousel-indicators">
            <li data-target="#carousel-ad" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-ad" data-slide-to="1"></li>
            <li data-target="#carousel-ad" data-slide-to="2"></li>
            <li data-target="#carousel-ad" data-slide-to="3"></li>
            <li data-target="#carousel-ad" data-slide-to="4"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active"><a href="goodsInfo?goodsPic=MateRS.jpg"><img class="img-responsive" src="img/轮播8.jpg"></div></a>
            <div class="item"><a href="goodsInfo?goodsPic=畅享8.jpg"><img class="img-responsive" src="img/轮播2.png"></div></a>
            <div class="item"><a href="goodsInfo?goodsPic=1.22.jpg"><img class="img-responsive" src="img/轮播3.jpg"></div></a>
            <div class="item"><a href="goodsInfo?goodsPic=麦芒5.jpg"><img class="img-responsive" src="img/轮播4.jpg"></div></a>
            <div class="item"><a href="goodsInfo?goodsPic=P20.jpg"><img class="img-responsive" src="img/轮播5.jpg"></div></a>
        </div>
    </div> 
	
	<!--
    	作者：offline
    	时间：2018-06-22
    	描述：闪黑精品
    -->
	
	<div class="flashBlackProduct">
		<hr class="productBar" />
		<font class="fbpb"><a name="shanhei">闪黑精品</a></font>
		<table class="pic1">
			<tr>
				<td><a href="goodsInfo?goodsPic=nova3e.jpg"><img id="img" src="img/1.1.jpg"/></a></td>
				<td><a href="goodsInfo?goodsPic=Mate10.jpg"><img id="img" src="img/1.2.jpg"/></a></td>
				<td><a href="goodsInfo?goodsPic=P10.jpg"><img id="img" src="img/1.3.jpg"/></a></td>
				<td><a href="goodsInfo?goodsPic=nova2s.jpg"><img id="img" src="img/1.4.jpg"/></a></td>
			</tr>
		</table>
	</div>
	
	<!--
    	作者：offline
    	时间：2018-06-22
    	描述：闪黑小列表
    -->
    <div class="flashBlackSmallProduct">
		<table class="pic1">
			<tr>
				<td><a href="goodsInfo?goodsPic=vivo.jpg"><img id="img" src="img/2.1.jpg"/></a></td>
				<td><a href="goodsInfo?goodsPic=1.22.jpg"><img id="img" src="img/2.2.jpg"/></a></td>
				<td><a href="goodsInfo?goodsPic=P20.jpg"><img id="img" src="img/2.3.jpg"/></a></td>
			</tr>
		</table>
	</div>
	
	<!--
    	作者：offline
    	时间：2018-06-22
    	描述：手机
    -->
	
	<div class="phoneProduct">
		<hr class="productBar" />
		<font class="fbpb" ><a name="sj">手机</a></font>
		<div class="shouji">
			<div class="pic2">
				<a href="goodsInfo?goodsPic=P20.jpg"><img src="img/3.1.jpg"/></a>
			</div>
			<div class="pic3">
				<a href="goodsInfo?goodsPic=nova3e.jpg"><img src="img/3.2.jpg"/></a>
			</div>
			<div class="pic4">
				<a href="goodsInfo?goodsPic=畅享8.jpg"><img src="img/3.3.jpg"/></a>
			</div>
		
		
	<!--
    	作者：offline
    	时间：2018-06-22
    	描述：闪黑小列表
    -->
		    <div class="phoneSmallProduct">
				<table class="pic5">
					<tr>
						<td><a href="goodsInfo?goodsPic=1.22.jpg"><img src="img/3.4.jpg"/></a></td>
						<td><a href="goodsInfo?goodsPic=P20.jpg"><img src="img/3.5.jpg"/></a></td>
						<td><a href="goodsInfo?goodsPic=nova3e.jpg"><img src="img/3.6.jpg"/></a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>	
	<!-- <DIV style="DISPLAY: none;POSITION: fixed; TEXT-ALIGN: center; LINE-HEIGHT: 20px; WIDTH: 20px; BOTTOM: 100px; HEIGHT: 80px; FONT-SIZE: 12px; CURSOR: pointer; RIGHT: 0px; _position: absolute; _right: auto" id=goTopBtn><IMG border=0 src="img/hd.png" width="20px" height="20px"></DIV>
<SCRIPT type=text/javascript>goTopEx();</SCRIPT> -->
<!--主体结束-->
<s:debug/>
<jsp:include page="bottom.jsp"/>
</body>
</html>
