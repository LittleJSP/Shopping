<%@ page contentType="text/html;charset=gb2312"%>
< page import=mybean. data. Login"%>
8@
>
jsp: useBean id="loginBean"class="mybean. data. Login"scope="session"/>
@
de file="h
</HEAD
HTML > Body background= image/back. jpg><center>
if(loginBean==null)(
response. sendRedirect("login. jsp");
�ض��򵽵�¼ҳ��
se
boolean b= loginBean getLogname()==null l
loginBean. getLogname(). length()==0;
f(b)
response. sendRedirect("1ogin.jsp");//�ض��򵽵�¼ҳ��
}
String numberID= request getParameter("xijie")
out. print("<th>��Ʒ��"+ numberID);
if(numberID== null)(
out. print("û�в�Ʒ��,�޷��鿴ϸ��");
Connection con;
Statement sq
ResultSet rs;
try( Class forName("com mysql jdbc Driver")
tch( Exception e)fF
String uri="jdbc:mysql: //127.0.0.1/shop
con=DriverManager getConnection(uri, root",");





sql= con. createStatement()
String cdn
SELECT* FROM cosmeticForm where cosmetic number =' number ID +1"
rs= sql executeQuery( cdn)i
out. print("< table border=2>)
out. print("<tr>)
out. print("<th>��Ʒ��");
out. print("<th>����");
out. print("<th>������");
out. print("<th>�۸�");
out. print("<th>< font color=blue>���빺�ﳵ</font>")
out. print("</TR>")
String picture="welcome. jpg
String detailMess
while(rs next())(
String number rs getString(1);
String name = rs get String(2)
String maker =rs getString(3);
String price= rs getString(4);
detailMess=rs getString(5)
picture=rs getString(6);
//���ڹ��ﳵ����۸�,β׺�ϡ�#�۸�ֵ
String goods =(" number +"," name +"," maker +"," price+)#+pricei
goods= goods. replaceAll("\\pfBlank)","")
String button=<form. action='put Goods Servlet,'method = 'post>+
<input type ='hidden' name=' value="+ goods+">"+
< input type=' submit' value='���빺�ﳵ></form>";
out. print("<tr>)
out. print("<td>+ number +"</td>")
t print("<td>+
</td>");
out. print("<td>+ maker +"</td>")
out. print("<td>"+ price +"</td>")
t print("< td> button +"</td>
out. print("</tr>")
out. print("</table>")
out. print("��Ʒ����:<br>");
out println("<div align= center >"+ detailMess +"<div>")
String pic ="<img src=.image/"+ picture +" width= 260 height =200 ><>";
(pic)i
/��ƷͼƬ
con. close()
catch( SQLException exp)Ih
8>
</Center ></BODY ></HTML>
