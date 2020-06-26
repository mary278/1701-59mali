<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register</title>
	<link rel="stylesheet" href="css/demo2.css"/>
	<title>闪黑注册</title>
</head>
	<body background="img/背景.jpg">
		<div class="reg1">
			<div class="regCenter">
				<a class="reg_login" onclick="location.href='login.jsp'">[ 前 往 登 录 ]</a>
				<a href="index.jsp"><img src="img/闪电3.png" width="71" height="33px"></a>
				<a href="index.jsp"><img src="img/闪黑2.png" width="71" height="33px"></a><br>
				
				<s:form name="register" method="post" action="regist.action">
					<s:textfield class="reg_input" name="userName" label="用 户 名"/>
					<s:textfield class="reg_input" name="userPhone" label="电话号码"/>
					<s:password class="reg_input" name="userPassword" label="密 码"/>
					<s:password class="reg_input" name="userPassword2" label="确认密码"/>
					<s:submit class="reg_input" value="注册"/>
				</s:form>
			</div>			
		</div>
	</body>
</html>