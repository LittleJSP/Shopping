<%@ page contentType="text/html;charset=gb2312" %><HEAD>
<%@ include file="head.txt" %>
<style type="text/css">
@import url("css/inputRegisterMess.css");

</style>
</HEAD>

<jsp:useBean id="userBean" class="mybean.data.Register" scope="request" />

<title>ע��ҳ��</title>
<HTML><BODY><Font size=2>

<div id="content"> 
    <div align="center">
    <FORM action="registerServlet" method="post" name=form>
    <table>
    �û�������ĸ�����֡��»��߹��ɣ�*ע�͵��������д
    <h1 align="center">ע��</h1>
    <tr><td>*�û����ƣ�</td>
        <td><input type=text name="logname" ></td>
        <td>*�û����룺</td>
        <td><input type=password name="password"></td>
    </tr>
    <tr><td>*�ظ����룺</td>
        <td><input type=password name="again_password"></td>
        <td>&nbsp;&nbsp;��ϵ�绰��</td>
        <td><input type=text name="phone"></td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;�ʼĵ�ַ��</td><td><input type=text name="address"></td>
        <td>&nbsp;&nbsp;��ʵ������</td><td><input type=text name="realname"></td>
        
        <td><input type=submit name="g" value="�ύ" class="submit"></td>
    </tr></table></Form></div>
    <br/><br/>
    <div align="center">
    <p><h1>ע�ᷴ��</h1>
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
</div>

<div class="footer">

    <p align="center"><a href="index.jsp">��ҳ</a> | 
<a href="ookCosmetic.jsp">����鼮</a>| 
<a href="searchCosmetic.jsp">��ѯ�鼮</a> | 
<a href="lookOrderForm.jsp">�鿴����</a> | 
<a href="lookShoppingCar.jsp">�ҵĹ��ﳵ</a>
     <br />
     <br />
      Copyright &copy; &nbsp;<a href="yuanshishuzhai.html">��������</a>&nbsp;&nbsp;2018&nbsp;&nbsp;| &nbsp;&nbsp;���ߣ�888-520-1314&nbsp;&nbsp;| &nbsp;&nbsp;��ַ����������ɽ�����ȳ����ϴ�ѧ��������ѧԺ</p> 
  </div>
</div>


</Body></HTML>
