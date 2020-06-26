<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/info.css"/>
	<link rel="stylesheet" href="css/demo2.css"/>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css"/>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<title>闪黑-个人信息</title>
</head>
<body>
<jsp:include page="../head.jsp"/> 
<script type="text/javascript">
		//得到表单信息
		function submitPassword(){
			var oldPassword=document.password.oldPassword.value;
			var userPassword=document.password.userPassword.value;
			var password=document.password.password.value;
			alert(password+":"+oldPassword);
			if (oldPassword==""){
				window.alert("请输入原先的密码");
				document.password.userName.focus();
				return false;
			}
			else if(userPassword==""){
				window.alert("请输入新密码！");
				document.password.userPassword.focus();
				return false;
			}
			else if(password!=oldPassword){
				window.alert("原始密码不正确，请重新输入！");
				document.password.oldPassword.focus();
				return false;
			}
			 document.password.submit();
		}
		function submitPhone(){
			var userPhone=document.phone.userPhone.value;
			alert(userPhone);
			if (userPhone==""){
				window.alert("请输入新号码！");
				document.phone.userPhone.focus();
				return false;
			}
			 document.phone.submit();
		}
</script>
<div class="panel-group" id="accordion">
	<div class="panel panel-info">
		<div class="panel-heading">
			<h4 class="panel-title">
				<font class="userFont">用户名：<s:property value="#session.user.userName"/></font>
				<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="xiugai">
					点击修改
				</a>
			</h4>
		</div>
		<div id="collapseThree" class="panel-collapse collapse">
			<div class="panel-body">
				用户名不可修改！
			</div>
		</div>
	</div>
	<div class="panel panel-success">
		<div class="panel-heading">
			<h4 class="panel-title">
				<font class="userFont">密码：<input style="width:100px"type="password" value="${sessionScope.user.userPassword}"/></font>
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseTwo" class="xiugai">
					点击修改
				</a>
			</h4>
		</div>
		<div id="collapseTwo" class="panel-collapse collapse">
			<div class="panel-body">
			<form name="password" method="post" action="update.action">
				<table>
					<tr>
						<td>旧密码：</td><td><input type="password" name="oldPassword"/></td>
					</tr>
					<tr>
						<td>新密码：</td><td><input type="password" name="userPassword"/></td>
					</tr>
				</table>
				<input type="hidden" name="password" value="${user.userPassword }"/>
				<input type="button" value="确定" onclick="submitPassword()"/>
			</form>
			<%-- <s:form method="post" name="password" action="update.action">
				<s:password name="oldPassword" label="旧密码"/>
				<s:password name="userPassword" label="新密码"/>
				<s:submit value="提交"/>
			</s:form> --%>
			</div>
		</div>
	</div>
	<div class="panel panel-warning">
		<div class="panel-heading">
			<h4 class="panel-title">
				<font class="userFont">电话号码：<s:property value="#attr.user.userPhone"/></font>
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseFour" class="xiugai">
					点击修改
				</a>
			</h4>
		</div>
		<div id="collapseFour" class="panel-collapse collapse">
			<div class="panel-body">
			<form name="phone" method="post" action="update.action">
				<table>
					<tr>
						<td>旧电话号码：</td><td><input type="text" value="${sessionScope.user.userPhone}"/></td>
					</tr>
					<tr>
						<td>新电话号码：</td><td><input type="text" name="userPhone"/></td>
					</tr>
				</table>
				<input type="button" value="确定" onclick="submitPhone()"/>
			</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../bottom.jsp"/>
</body>
</html>