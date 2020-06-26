<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/cart.css"/>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/demo2.css"/>
	<title></title>
</head>
	<body>
		<c:if test="${not empty requestScope.msg }">
			<div class="alert alert-warning" style="margin-bottom:0px;">
				<a href="#" class="close" data-dismiss="alert">
					&times;
				</a>
				<strong>提示：<c:out value="${requestScope.msg }"/>
			</div>
		</c:if>
		<jsp:include page="../head.jsp"/>
		<div class="cartBlock">
		<c:forEach var="i" items="${sessionScope.ordersList}">
			<div class="cartBox">
				<div class="cartImg">
					<a href="goodsInfo?goodsPic=
					${i.goodsPic }"><img src="img/${i.goodsPic }" /></a>
				</div>
				<div class="cartInfo">
					<table class="cartInfo">
					<tr>
						<td><font>名称：</font></td>
						<td><c:out value="${i.goodsName}"/></td>
					</tr>
					<tr>
						<td><font>价格：</font></td>
						<td><c:out value="${i.goodsPrice}"/></td>
					</tr>
					<tr>
						<td><font>版本：</font></td>
						<td><c:out value="${i.goodsVersion}"/></td>
					</tr>
					<tr>
						<td><font>套餐：</font></td>
						<td><c:out value="${i.goodsSetMeal}"/></td>
					</tr>
				</table>
				</div>
				<div class="ordersButton">
					<table>
					<tr>
						<td><font>数&nbsp;&nbsp;&nbsp;量：</font></td>
						<td><c:out value="${i.goodsAmount}"/>件</td>
					</tr>
					<tr>
						<td>总&nbsp;&nbsp;&nbsp;价：</td>
						<td><c:out value="${i.ordersSum}"/></td>
					</tr>
					<tr><td></td></tr>
					<tr>
						<!-- <td></td> -->
						<td><input type="button" value="返回上层" onclick="location.href='javascript:history.go(-1)'"></td>
					</tr>
					<%-- <tr>
						<!-- <td></td> -->
						<td><a href="GoodsServletImpl?method=dropOrders&OrdersId=${i.ordersId}">
							<input type="button" value="取消订单" /></a></td>
					</tr> --%>
				</table>
				</div>
			</div>
			</c:forEach>
		</div>
		<jsp:include page="../bottom.jsp"/>
	</body>
</html>