<%@ page contentType = "text/html;charset=gb2312" %>
<jsp:useBean id = "loginBean" class= "mybean.data.Login" scope= "session"/>
<HTML>
<head><style type="text/css">
@import url("css/2.css");

</style>
</head>

<body>
<div id="body_warpper">
<div class="header">
 <ul>
    <li><a href="exitServlet">�˳�</a></li>
    <li><a href="inputRegisterMess.jsp#content">ע��</a></li>
    <li><a href="login.jsp#content">��¼</a></li>
  </ul>
<div class="zhongjian"> <h1>��������</h1></div>

   
<p>Ȱ��Īϧ�����£�Ȱ��ϧȡ����ʱ</p>
 
<div align="center" class="daohang">
<ul>

  <li><a href="index.jsp">��ҳ</a></li>
  <li><a href="lookCosmetic.jsp#content">����鼮</a></li>
  <li><a href="searchCosmetic.jsp#content">��ѯ�鼮</a></li>
  <li><a href="lookOrderForm.jsp#content">�鿴����</a></li>
  <li><a href="lookShoppingCar.jsp#content">�ҵĹ��ﳵ</a></li>
</ul>
</div>

</div>


<div id="content">

   <div class="denglu" align="center">
   <br/><br/>
   <h1 align="center">��¼</h1>
   <table border = 2>
   <FORM action ="loginServlet" Method ="post">
   <tr><td>��¼���ƣ�<Input type=text name="logname"></td></tr>
   <tr><td>�������룺<Input type=password name="password"></td></tr>
   </table>
   <br/>
<Input type=submit name="g" value ="�ύ" class="submit">
   </form> </div>

<br/><br/>
<div align ="center">
    ��¼������Ϣ��<jsp:getProperty name="loginBean" property="backNews"/>
    <br>��¼���ƣ�<jsp:getProperty name="loginBean" property="logname"/>
</div>
</div>


<div class="footer">

    <p align="center"><a href="index.jsp">��ҳ</a> | 
<a href="ookCosmetic.jsp#content">����鼮</a>| 
<a href="searchCosmetic.jsp#content">��ѯ�鼮</a> | 
<a href="lookOrderForm.jsp#content">�鿴����</a> | 
<a href="lookShoppingCar.jsp#content">�ҵĹ��ﳵ</a>
     <br />
     <br />
      Copyright &copy; &nbsp;<a href="index.jsp">��������</a>&nbsp;&nbsp;2018&nbsp;&nbsp;| &nbsp;&nbsp;���ߣ�888-520-1314&nbsp;&nbsp;| &nbsp;&nbsp;��ַ����������ɽ�����ȳ����ϴ�ѧ��������ѧԺ</p> 
  </div>
</div>
</body></HTML>
