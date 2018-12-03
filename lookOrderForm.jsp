<%@ page contentType="text/html;charset=gb2312"%>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<%@ page import="java.sql.*" %>
<HIML><HEAD><%@ include file="head.txt"%></HEAD>
<BODY background= image/happy.jpg>
<div align="center">
<%
  if(loginBean== null){
    response.sendRedirect("login.jsp");   //重定向到登录页面
  }
  else{
    boolean b= loginBean.getLogname()== null||loginBean.getLogname().length()==0;
    if(b)
      response.sendRedirect("login.jsp");   //重定向到登录页面
  }
  Connection con;
  Statement sql;
  ResultSet rs;
  try{
    Class.forName("com.mysql.jdbc.Driver");
  }
  catch(Exception e){}
  try{
    String url="jdbc:mysql://127.0.0.1/shop?"+"user=root&password=&characterEncoding=gb2312&serverTimezone=UTC";
    con=DriverManager.getConnection(url);
    sql=con.createStatement();
    String cdn="SELECT id,mess,sum FROM orderForm where logname='"+loginBean.getLogname()+"'";
    rs= sql.executeQuery(cdn);
    out.print("<table border=2>");
    out.print("<tr>");
    out.print("<th width=100>"+"订单号");
    out.print("<th width=100>"+"信息");
    out.print("<th width=100>"+"价格");
    out.print("</TR>");
    while(rs.next()){
      out. print("<tr>");
      out. print("<td>"+rs.getString(1)+"</td>");
      out. print("<td>"+rs.getString(2)+"</td>");
      out. print("<td>"+rs.getString(3)+"</td>");
      out. print("</tr>");
    }
    out.print("</table>");
    con.close();
  }
  catch(SQLException e){
    out.print(e);
  }
%>
</div>
</BODY></HTML>
