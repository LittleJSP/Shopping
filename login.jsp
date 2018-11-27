login.jsp(效果如图10.10所示)
<% page contentType="text/html; charset=GB2312"8>
jsp: useBean id="loginBean" class ="mybean. data. Login "scope="session"/>
<HTML > HEAD><%@ include file="head. txt"%></HEAD>
BODY background image/back. jpg > font size =2>
<div align="center">
table border= 2>
<tr><th>登录</th></tr>
FORM action="loginServlet" Method="post">
<tr><td>登录名称:< Input type= text name=" logname"></td></tr>
<tr><td>输入密码:< Input type= password name=" password"></td></tr>
</table>
Input type submit name ="g value ="
提交">
</form></div
<div align="center">
登录反馈信息:<jsp: getProperty name=" loginBean" property=" back News"/
<br>登录名称:jsp: getProperty name="1 ogInBear" property=" logname
<div ></ font
少
</BODY ></HTML>
登录
输入密码
提交
登录反馈信息: start登录成功
登录名称:atat
