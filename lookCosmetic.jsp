<%@page contentType="text/html;charset=gb2312" %>
<%@page import="java.sql.*" %>
<HTML>

<head><%@ include file="head.txt" %>
<style type="text/css">
@import url("css/lookcosmetic.css");
</style></head>

<BODY>

<div class="content" align="center">

<font size=2>
<h1>�鼮����</h1>
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
      out.print("<br/>");
      out.print("<br/>");
      out.print("<input type='submit' value='�ύ' class='submit'>");
      out.print("</form>");
      out.print("</div>");
      con.close();
    }
    catch(SQLException e){
      out.print(e);
    }
%>
</font></div>


<div class="footer">
    <p align="center"><a href="index.jsp">��ҳ</a> |
<a href="lookCosmetic.jsp#content">����鼮</a>|
<a href="searchCosmetic.jsp#content">��ѯ�鼮</a> |
<a href="lookOrderForm.jsp#content">�鿴����</a> |
<a href="lookShoppingCar.jsp#content">�ҵĹ��ﳵ</a>
     <br />
     <br />
      Copyright &copy; &nbsp;<a href="index.jsp">��������</a>&nbsp;&nbsp;2018&nbsp;&nbsp;| &nbsp;&nbsp;���ߣ�888-520-1314&nbsp;&nbsp;| &nbsp;&nbsp;��ַ����������ɽ�����ȳ����ϴ�ѧ��������ѧԺ</p>
</div>



</BODY></HTML>
