<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="mybean.data.Login" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session" />
<%@ include file="head.txt" %></HEAD>
<HTML> <Body background=image/back.jpg><center>
<% if(loginBean==null){
response.sendRedirect("login.jsp");
//重定向到登录页面
}
else{
boolean b= loginBean.getLogname()==null||loginBean.getLogname().length()==0;
if(b)
response.sendRedirect("1ogin.jsp");//重定向到登录页面
}
String numberID=request.getParameter("xijie");
out.print("<th>��Ʒ��"+numberID);
if(numberID==null){
out.print("û�в�Ʒ�ţ��޷��鿴ϸ��");
return;
}
Connection con;
Statement sql;
ResultSet rs;
try( Class.forName("com.mysql.jdbc.Driver");
catch(Exception e){}
String uri="jdbc:mysql://127.0.0.1/shop";
try{
con=DriverManager.getConnection(uri,"root","");
sql=con.createStatement();
String cdn=
"SELECT * FROM cosmeticForm where cosmetic_number ='"numberID+"'";
rs=sql.executeQuery(cdn);
out.print("<table border=2>");
out.print("<tr>");
out.print("<th>��Ʒ��");
out.print("<th>����");
out.print("<th>������");
out.print("<th>�۸�");
out.print("<th><font color=blue>���빺�ﳵ</font>");
out.print("</TR>");
String picture="welcome.jpg";
String detailMess="";
while(rs.next()){
String number=rs.getString(1);
String name=rs.getString(2);
String maker=rs.getString(3);
String price=rs.getString(4);
detailMess=rs.getString(5);
picture=rs.getString(6);
//���ڹ��ﳵ����۸�β׺�ϡ�#���۸�ֵ
String goods="("+number+","+name+","+maker+","+price+")#"+price;
goods=goods.replaceAll("\\p{Blank}","");
String button="<form action='putGoodsServlet'method = 'post'>"+"<input type='hidden' name='java' value="+goods+">"+<input type='submit' value='放入购物�
