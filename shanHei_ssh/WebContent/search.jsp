<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/cart.css"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/demo2.css"/>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
	<link rel="stylesheet" href="css/bootstrap.css" />
	<title></title>
</head>
	<body>
		<jsp:include page="head.jsp"/>
		<div class="cartBlock">
		<c:forEach var="index" items="${sessionScope.goodsList}" varStatus="i">
			<div class="cartBox">
				<div class="cartImg">
					<a href="goodsInfo?goodsPic=${index.goodsPic}">
						<img src="img/${index.goodsPic}"/></a>
				</div>
				<div class="cartInfo">
					<table class="cartInfo1">
					<tr>
						<td><font>名称：<c:out value="${index.goodsName}"/></font></td>
					</tr>
					<tr></tr><tr></tr>
					<tr>
						<td><c:out value="${index.goodsIntroduce}"/></td>
					</tr>
				</table>
				</div>
				<div class="cartInfo">
					<table class="cartInfo">
					<tr>
						<td><font>价格：</font></td>
					<td><c:out value="${index.goodsPrice}"/></td>
					</tr>
					<tr>
						<td><font>颜色：</font></td>
						<td><c:out value="${index.goodsColor}"/></td>
					</tr>
					<tr>
						<td><font>版本：</font></td>
						<td><c:out value="${index.goodsVersion}"/></td>
					</tr>
					<tr>
						<td><font>套餐：</font></td>
						<td><c:out value="${index.goodsSetMeal}"/></td>
					</tr>
				</table>
				</div>
			</div>
			</c:forEach>
		</div>
		<jsp:include page="bottom.jsp"/>
	</body>
</html>