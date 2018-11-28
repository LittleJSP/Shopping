<% page contentType ="text/html; charset=utf-8"%>
<% page import="java. sql*"%>
<HTML ><HEAD><% include file="head. txt 3></HEAD>
BODY background=image/back. Jpg > font size=2>
<div align="center>
<
I Class for Name(com. mysql jdbc Driver")
catch(Exception e)t
String uri="jdbc: mysql: //127.0.0. 1/shop?"+
fuser= root&password= &characterEncoding= gb2312
Connection con;
Statement sql
ResultSet rsi
con= DriverManager get Connection(uri);
sql=con. createStatement()
//读取 classify表,获得分类
rs= sql executeQuery("SELECT* FROM classify ")i
out. print("< form action=query Servlet' method ='post'>)i
out. print("< select name='fenleiNumber'>")
thile(rs next())(
it id= rs getInt(1)
String name rs getString(2)
out. print("<option value =" id +">+ name wz/option >)i
out. print(".
</select>)
out. print("< input type ='submit' value =HE3" >")
out. print("</form>
catch( SQLException e)I
out. print(e)
8>
</div></font>
</BODY></HTML>
