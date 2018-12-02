package myservlet.control;
import mybean.data.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
public class HandleLogin extends HttpServlet{
public void init(ServletConfig config) throws ServletException{
super.init(config);
try{
Class.forName("com.mysql.jdbc.Driver");
}
catch(Exception e){}
}
public String handleString(String s){
try{ byte bb[ ]=s.getBytes("iso-8859-1");
s= new String(bb);
}
catch(Exception ee){}
return s;
}
public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
Connection con;
Statement sql;
String logname=request.getParameter("logname").trim(),
password=request.getParameter("password").trim();
logname=handleString(logname);
password=handleString(password);
String uri="jdbc:mysql://127.0.0.1/shop?"+ "user=root&password=&characterEncoding=gb2312&serverTimezone=UTC";
boolean boo=(logname.length()>0)&&(password.length()>0);
try{
con=DriverManager.getConnection(uri);
String condition="select * from user where logname='"+logname+"'and password='"+password+"'";
sql=con.createStatement();
if(boo){
ResultSet rs=sql.executeQuery(condition);
boolean m=rs.next();
if(m==true){
//调用登录成功的方�
