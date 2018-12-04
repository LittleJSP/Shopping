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
    <li><a href="exitServlet">退出</a></li>
    <li><a href="inputRegisterMess.jsp#content">注册</a></li>
    <li><a href="login.jsp#content">登录</a></li>
  </ul>
<div class="zhongjian"> <h1>神奇书屋</h1></div>

   
<p>劝君莫惜金缕衣，劝君惜取少年时</p>
 
<div align="center" class="daohang">
<ul>

  <li><a href="index.jsp">首页</a></li>
  <li><a href="lookCosmetic.jsp#content">浏览书籍</a></li>
  <li><a href="searchCosmetic.jsp#content">查询书籍</a></li>
  <li><a href="lookOrderForm.jsp#content">查看订单</a></li>
  <li><a href="lookShoppingCar.jsp#content">我的购物车</a></li>
</ul>
</div>

</div>


<div id="content">

   <div class="denglu" align="center">
   <br/><br/>
   <h1 align="center">登录</h1>
   <table border = 2>
   <FORM action ="loginServlet" Method ="post">
   <tr><td>登录名称：<Input type=text name="logname"></td></tr>
   <tr><td>输入密码：<Input type=password name="password"></td></tr>
   </table>
   <br/>
<Input type=submit name="g" value ="提交" class="submit">
   </form> </div>

<br/><br/>
<div align ="center">
    登录反馈信息：<jsp:getProperty name="loginBean" property="backNews"/>
    <br>登录名称：<jsp:getProperty name="loginBean" property="logname"/>
</div>
</div>


<div class="footer">

    <p align="center"><a href="index.jsp">首页</a> | 
<a href="ookCosmetic.jsp#content">浏览书籍</a>| 
<a href="searchCosmetic.jsp#content">查询书籍</a> | 
<a href="lookOrderForm.jsp#content">查看订单</a> | 
<a href="lookShoppingCar.jsp#content">我的购物车</a>
     <br />
     <br />
      Copyright &copy; &nbsp;<a href="index.jsp">神奇书屋</a>&nbsp;&nbsp;2018&nbsp;&nbsp;| &nbsp;&nbsp;热线：888-520-1314&nbsp;&nbsp;| &nbsp;&nbsp;地址：深圳市南山区华侨城暨南大学深圳旅游学院</p> 
  </div>
</div>
</body></HTML>
