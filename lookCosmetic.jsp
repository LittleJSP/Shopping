<%@page contentType="text/html;charset=gb2312" %>
<%@page import="java.sql.*" %>
<HTML><HEAD><%@include file="head.txt" %></HEAD>
<BODY background=image/happy.jpg><font size=2>
<div align="center">
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
      //��ȡclassify����÷���;
      rs=sql.executeQuery("SELECT * FROM classify ");
      out.print("<form action='queryServlet' method='post'>");
      out.print("<select name='fenleiNumber'>");
      while(rs.next()){
        int id=rs.getInt(1);
        String name=rs.getString(2);
        out.print("<option value="+ id +">"+name+"</option>");
      }
      out.print("</select>");
      out.print("<input type='submit' value='�ύ'>");
      out.print("</form>");
      con.close();
    }
    catch(SQLException e){
      out.print(e);
    }
%>
</div></font>
</BODY></HTML>
