<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>index</title>
	</head>
<body>
<script type="text/javascript">
	function search(){
		var goodsContent = document.getElementById("goodsContent").value;
		alert(goodsContent);
		location.href="getGoodsList?key="+goodsContent;
	}
</script>
<div class="header">
	<div class="daohang1" >
			<ul class="ul1" >
			    <!-- <li class="firstli"><a href="index.jsp" name="top">首页</a></li>
			    <li><a href="index.jsp">闪黑官网</a></li>
			    <li><a href="index.jsp">闪闪官网</a></li>
			    <li><a href="index.jsp">小黑官网</a></li>
			    <li><a href="index.jsp">V码（优购码）</a></li>
			    <li><a href="index.jsp">企业购</a></li>
			    <li><a href="index.jsp">Select Region</a></li>
			    <li><a href="index.jsp">更多精彩</a></li> -->
			    <li class="yu">青春是一种刺，有尖锐才锋芒，刺穿一切虚伪，打破所有陈规，保持不妥协的姿态，用棱角改变世界的圆</li>
			    <li class="loginbar">
			    	 <a href="getOrdersList">我的订单
			         	<span class="glyphicon glyphicon-folder-close"></span>
			        </a>
			    </li>
			    <li>
			    	 <a href="getCartList">购物车
			         	<span class="glyphicon glyphicon-shopping-cart"></span>
			        </a>
			    </li>
			    <li>
			    	 <a href="${pageContext.request.contextPath }/user/userInfo.jsp">个人信息
			         	<span class="glyphicon glyphicon-user"></span>
			        </a>
			    </li>
			    	
			    <s:if test="#attr.user==null ">
			    	<li>
			    		<a href="register.jsp">[注册]&nbsp;&nbsp;</a>
			    		<a href="login.jsp">[登录]&nbsp;&nbsp;
			         		<span class="glyphicon glyphicon-user"></span>
			        	</a>
			    	</li>
			    </s:if>
			    <s:else>
			    	<li>
			    	 	<s:property value="#session.user.userName"/>
			    	 	<s:debug></s:debug>
			    	 	<a href="logout.action">[注销]&nbsp;&nbsp;</a>
			    	 	<a href="register.jsp">[注册]</a>
			    	</li>
			    </s:else>
			</ul>
		</div>
		<div class="content" >
			<div class="logopic">
                <a href="index.jsp" title="ShanHei首页"><img src="img/闪电3.png" width="71" height="33px"></a>
                <!--<font class="returnTop"><a name="top">|</a></font>-->
                <a href="index.jsp" title="ShanHei首页"><img src="img/闪黑2.png" width="90" height="33px"></a>
            </div>
			<div class="daohang2">
				<ul class="ul2">
				 <li><a href="index.jsp">首页</a></li>
				    <li><a href="#sj">手机</a></li>
				    <li><a href="#shanhei">闪黑精品</a></li>
				    <!-- <li><a href="message.jsp">留言板</a></li> -->
				    <li><a href="getCartList">购物车</a></li>
				    <li><a href="getOrdersList">我的订单</a></li>
				</ul>
			</div>
			<div class="search">
				<input type="text" class="searchtext" id="goodsContent"/>
					<button class="btn btn-default" type="button" width="200px" height="20px" onclick="search()">
						 <span class="glyphicon glyphicon-search" ></span>
					</button>
			</div>
		</div>
	</div>
	
</body>
</html>