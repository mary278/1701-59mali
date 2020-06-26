<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/login.css"/>
	<title>闪黑登入</title>
	<style type="text/css">
		body{
			background:url(img/login.jpg) no-repeat;
			background-size:100%;
		}
	</style>
</head>
<body>
		<div class="login1">
			<div class="logCenter">
				<a href="index.jsp"><img src="img/闪电3.png" width="71" height="33px"></a>
				<a href="index.jsp"><img src="img/闪黑2.png" width="71" height="33px"></a>
				<br>
				
				<s:form name="login" method="post" action="login.action"  theme="simple">
				
					<table>
						<tr>
							<td>用&nbsp;&nbsp;户&nbsp;&nbsp;名：</td>
							<td><s:textfield class="login_input" name="userName" /></td>
						</tr>
						<tr>
							<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
							<td><s:password class="login_input" name="userPassword" /></td>
						<!-- </tr>
							<td>验&nbsp;&nbsp;证&nbsp;&nbsp;码：</td>
							<td><input class="reg_input" type="text" name="VerificationCode" /></td>
						</tr> -->
					</table>
					<s:submit class="login_submit" value="确定" />
					<input class="login_submit" type="button" value="注册" onclick="location.href='register.jsp'"/>
				<br><br>
				<font class="login_msg"><s:property value="#attr.msg"/></font>
				</s:form>
			</div>			
		</div>
		
	</body>
</html>