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
			<strong>提示:<c:out value="${requestScope.msg }"/>
		</div>
	</c:if>
		<jsp:include page="../head.jsp"/>
		<div class="cartBlock">
		<c:forEach var="i" items="${sessionScope.cartList}" varStatus="in">
			<div class="cartBox">
				<div class="cartImg">
					<a href="goodsInfo?goodsPic=${i.goodsPic}"><img src="img/${i.goodsPic}" /></a>
				</div>
				<div class="cartInfo">
					<table class="cartInfo">
					<tr>
						<td><font>名称</font></td>
						<td><c:out value="${i.goodsName}"/>
						</td>
					</tr>
					<tr>
						<td><font>价格：</font></td>
						<td>${i.goodsPrice}</td>
					</tr>
					<tr>
						<td><font>版本：</font></td>
						<td>${i.goodsVersion}</td>
					</tr>
					<tr>
						<td><font>套餐：</font></td>
						<td>${i.goodsSetMeal}</td>
					</tr>
				</table>
				</div>
				<div class="cartButton">
					<table>
					<tr>
						<td>数&nbsp;&nbsp;&nbsp;量：<input class="sum" type="text" 
						value="${i.cartGoodsAmount}" id="cartGoodsAmount" onblur="changeAmount(${i.cartId})"></td>
					</tr>
					<tr>
						<td><a href="dropCartOrders?cartId=${i.cartId}">
						<input class="cbutton" type="button" value="立即下单"></a></td>
					</tr>
					<tr>
						<td><a href="dropCart?cartId=${i.cartId}">
						<input class="cbutton" type="button" value="删除"></td></a>
					</tr>
				</table>
				</div>
			</div>
			</c:forEach>
		</div>
		<jsp:include page="../bottom.jsp"/>
		<script type="text/javascript">
	
		function changeAmount(cartId){
			var cartGoodsAmount=document.getElementById("cartGoodsAmount").value;
			/* alert(cartId+":"+cartGoodsAmount); */
			location.href="updateAmount?goodsId="+${i.goodsId}+"&cartGoodsAmount="+cartGoodsAmount;
		}
	
	</script>
	</body>
	
</html>