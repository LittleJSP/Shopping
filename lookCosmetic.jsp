<%@page contentType="text/html;charset=gb2312" %>
<%@page import="java.sql.*" %>
<HTML>

<head><style type="text/css">
@import url("css/liulanshuji.css");
</style>
</head>

<BODY>
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


<div class="content align="center">
<font size=2>

<%  try{ Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){}
    String uri="jdbc:mysql://127.0.0.1/shop?"+"user=root&password=&characterEncoding=gb2312&serverTimezone=UTC";
    Connection con;
    Statement sql;
    ResultSet rs;
    try{
      con=DriverManager.getConnection(uri);
      sql=con.createStatement();
      //读取classify表，获得分类;
      rs=sql.executeQuery("SELECT * FROM classify ");
      out.print("<form action='queryServlet' method='post'>");
      out.print("<select name='fenleiNumber'>");
      while(rs.next()){
        int id=rs.getInt(1);
        String name=rs.getString(2);
        out.print("<option value="+ id +">"+name+"</option>");
      }
      out.print("</select>");
      out.print("<input type='submit' value='提交'>");
      out.print("</form>");
      con.close();
    }
    catch(SQLException e){
      out.print(e);
    }
%>
</font></div>


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

</BODY></HTML>
