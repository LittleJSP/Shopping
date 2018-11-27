inputRegister Mess jsp(效果如图10.9所示
page contentType ="text/html; charset
< isp: useBean id="user Bean"class"mybean. data Register scope="request"/>
<HEAD><%@ include file="head. txt"8></HEAD>
< title>注册页面</tit1
HTML > BODY background= image/back. jpg > Font size=2>
<div align="center">
<FORM action="register Servlet"method="post name form
< table>
用户名由字母、数字、下划线构成,*注释的项必须填写
tr><td>用户名称:</td><td>< Input type= text name=" logname"></td>
<td>*用户密码:</td><td>< Input type= password name=" password">
</td></tr>
<t><td>*重复密码:</td><td>
Input type= password name =again password ></td>
<td>联系电话:</td><td>< Input type= text name=" phone"></td></tr>
<tr><td>邮寄地址:</td><td>< Input type= text name=" address"></td>
<td>真实姓名:</td><td>< Input type= text name=" realname"></td>
</table>
<td>< Input type submit name=g" value="HEx"></td></tr>
</Form>
</di>
<div align="center">
>注册反馈
jsp: getP
propert
table border =3>
tr><td>会员名称:</td>
<td>< jsp: getProperty name="user Bean property="logname"/></td>
</tr>
tr><td>姓名:</td>
<td>< jsp: getProperty name-"" property ="realname"/></td>
</tr>
<td>地址:</
<td><
Jsp: getprop
</tr>
serBian"
td>电话:</td
property="address"/></td>
<td><3
</tr>
</table></div
sp:getProperty name="user Bean" property- phone"/></td>
Body ></HTML
0.4.2模型( Javabe
