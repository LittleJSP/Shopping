<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="userBean" class="mybean.data.Register" scope="request" />
<HEAD><%@ include file="head.txt" %></HEAD>
<title>ע��ҳ��</title>
<HTML><BODY background=image/back.jpg><Font size=2>
<div align="center">
<FORM action="registerServlet" method="post" name=form>
<table>
�û�������ĸ�����֡��»��߹��ɣ�*ע�͵��������д
<tr><td>*�û����ƣ�</td>
    <td><input type=text name="logname" ></td>
    <td>*�û����룺</td>
    <td><input type=password name="password"></td>
</tr>
<tr><td>*�ظ����룺</td>
    <td><input type=password name="again_password"></td>
    <td>��ϵ�绰��</td>
    <td><input type=text name="phone"></td>
</tr>
<tr>
    <td>�ʼĵ�ַ��</td><td><input type=text name="address"></td>
    <td>��ʵ������</td><td><input type=text name="realname"></td>
    <td><input type=submit name="g" value="�ύ"></td>
</tr></table></Form></div>
<div align="center">
<p>ע�ᷴ����
<jsp:getProperty name="userBean" property="backNews"/>
<table border=3>
<tr><td>��Ա���ƣ�</td>
<td><jsp:getProperty name="userBean" property="logname" /></td></tr>
<tr><td>������</td>
<td><jsp:getProperty name="userBean" property="realname" /></td></tr>
<tr><td>��ַ��</td>
<td><jsp:getProperty name="userBean" property="address" /></td></tr>
<tr><td>�绰��</td>
<td><jsp:getProperty name="userBean" property="phone" /></td></tr>
</table></div>
</Body></HTML>
