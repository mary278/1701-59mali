<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/demo2.css"/>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/production.css"/>
	<title>商品详情</title>
</head>
<body>
	<c:if test="${not empty seesionScope.msg }">
		<div class="alert alert-warning" style="margin-bottom:0px;">
			<a href="#" class="close" data-dismiss="alert">
				&times;
			</a>
			<strong>提示：<c:out value="${sessionScope.msg }"/>
		</div>
	</c:if>
	<jsp:include page="head.jsp"/>
		<div class="productAll">
			<div class="productPic">
				<img src="<c:url value='img/${sessionScope.goods.goodsPic }'/>"/>
			</div>
			<div class="productInfo">
				<table class="productInfo1">
					<tr>
						<td><font class="productName"><c:out value="${sessionScope.goods.goodsName}"/></font></td>
					</tr>
					<tr>
						<td><font class="productIntroduce"><c:out value="${sessionScope.goods.goodsIntroduce}"/></font></td>
					</tr>
				</table>
				<!--<font class="productName">HUAWEI P20 6GB+64GB 全网通版（极光色）</font>
				<br />
				<font class="productIntroduce">64GB（备注：可使用的内存容量小于 此值，因为手机软件占用部分空间）</font>
-->				<table class="productInfo2">
					<tr>
						<td><font class="productPrice">价格：</font></td>
						<td><c:out value="${sessionScope.goods.goodsPrice}"/></td>
					</tr>
					<tr>
						<td><font>颜色：</font></td>
						<td><c:out value="${sessionScope.goods.goodsColor}"/></td>
					</tr>
					<tr>
						<td><font>版本：</font></td>
						<td><c:out value="${sessionScope.goods.goodsVersion}"/></td>
					</tr>
					<tr>
						<td><font>套餐：</font></td>
						<td><c:out value="${sessionScope.goods.goodsSetMeal}"/></td>
					</tr>
				</table>
				<table class="productButton">
					<tr>
						<td><a href="addCart?goodsId=${sessionScope.goods.goodsId}">
						<input type="button" value="加入购物车"></a></td>
						<td><a href="addOrders?goodsId=${sessionScope.goods.goodsId}">
						<input type="button" value="立即下单"></a></td>
						<td><input type="button" value="返回上层" onclick="location.href='javascript:history.go(-1)'"></td>
					</tr>
				</table>
			</div>
		</div>
		<jsp:include page="bottom.jsp"/>
	</body>
</html>