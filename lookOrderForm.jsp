<%@ page content Type="text/html;charset=gb2312"%>
jsp: useBean id="loginBean"class="mybean. data. Login"scope="session"/>
<s@ page import=java. sql*"%>
<HIML>< HEAD><% include file="head. txt"%></HEAD>
BODY background= image/back. jpg>
ʱ).,0
<div align="center
<s if(loginBean== null)
response. sendRedirect("login. jsp")
/�ض��򵽵�¼ҳ��
else
)��CP,0
boolean b loginBean getLogname()== null I
oginBean. getLogname(). length()==0;
if(b)
response. sendRedirect("login. jsp");
//�ض��򵽵�¼ҳ��
Connection con;
��010
Statement sql;
sultset rsi
yI Class for Name("com mysql jdbc Driver");
catch(Exception e)1)
try( String uri="jdbc: mysql: //127.0.0.1/shop";
String user =root
String password =i
con- Driver Manager. get Connection(uri, user, password)
sql con createStatement ()i
String cdn="SELECT id, mess, sum FROM orderform where logname
loginBean getLogname()+"'";
rs= sql executeQuery( cdn);
out. print("< table border =2>");
out. print("<tr>)i
out. print("< th width=100>+"������");
aout. print("< th width=100>"+"��Ϣ");
out. print("< th width=100>"+"�۸�");



out. print("</TR>")
while(rs next())(
out. print("<tr>")
out. print("<td > rs getString(1)+"</td>"
out. print("<td >"t rs getString(2)+"</td>");
out. print("<td >+rs getString(3)+"</td>");
out. print("</tr>")
out. print("</table>")
con. close()
catch( SQLException e)i
out. print(e)
8>
</div>
</BODY></HTML>
