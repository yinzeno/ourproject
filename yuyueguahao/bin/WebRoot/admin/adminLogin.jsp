<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<html>
	<head>
		<style>
a {
	text-transform: none;
}

.content {
	margin: 0;
	width: 1120px;
	height: 500px border : 5px solid #333333;
	text-align: center;
	line-height: 5px;
	a {font-family: verdana;
}

a:link {
	color: Gray;
	text-decoration: none;
}

a:hover {
	text-decoration: underline
}
</style>
		<script language="javascript" src="../js/checkform.js">
</script>
	</head>
	<body vlink="#999999">

		<div class="content" align="center">

			<table width="100%" border="0" bgcolor="#0000FF">
				<tr>
					<td>
						<p style="font-family: verdana; color: white">
							<b></b>
							<br>
							<div style="padding-left:450px;color: white">网上医疗挂号系统</div>
						</p>
					</td>

				</tr>
			</table>
			<br>


			
				<table width="400" border="0">
					<tr>
						<td>
							<p style="font-family: verdana; color: olive">
								<big>欢迎您，登录网上医疗挂号系统！</big>
							</p>
							<p>
								<img src="../picture/11.GIF" width="526" height="10" />
							</p>
						</td>
					</tr>
				</table>
<form action="AdminAction?method=loginDo" method="post"
				name="form1" onSubmit="return checkloginform()">
				<table width="448" border="0">
					<tr>
						<td width="104" height="49">
							管理员：
						</td>
						<td colspan="2">
							<input type="text" class="login_addr" name="name"
								style="width: 250px; height: 35px" />
						</td>
						<td width="77">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td height="43">
							密&nbsp;&nbsp;码：
						</td>
						<td colspan="2">
							<input type="password" class="login_addr" name="password"
								style="width: 250px; height: 35px">
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td height="15">
							
						</td>
						<td colspan="2">
							<font color="red">${msg}</font>
						</td>
						<td>
							
						</td>
					</tr>
					<tr>
						<td height="37">
							&nbsp;
						</td>
						<td width="135">
							<input type="submit" value="登录"
								style="background: #093; width: 55px; height: 25px"
								>&nbsp;&nbsp;<input type="reset" value="重置"
								style="background: #093; width: 55px; height: 25px">
						</td>
						<td width="114">
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>
			
			</form>
			</div>
	</body>
</html>