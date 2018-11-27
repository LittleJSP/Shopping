package myservlet. control;
import mybean. data. * i
import java.sq1.兴
import Java.i0.头i
port javax. servlet.*
importJavax.servlethttp.*i
mport java util
public class Handlelogin extends Httpservlet
public void init( ServletConfig config) throws ServletExceptiont
super init(config)
tryi
Class for Name(" com mysql jdbc Driver")
catch(Exception e)(
public String handleString( String s)(
try byte bb[ ]=s getBytes("iso-8859-1)
s= new String(bb)
catch(Exception ee)t)
return si
public void dopost(hTtpserv
letRequest reques
st,httpServletresponSe
response) throws ServletException, IOExceptiont





Connection coni
Statement sqli
").trim()
ring log
quest. getP
Issword= request getParameter("password").trim()i
handlestring( log
password=handleString(password);
String uri="jdbc: mysql: //127.0.0. 1/shop? +"user=rootapassword
&character Encoding= gb2312";
boolean boo =(logname length()>0)&&(password length()>0);
String condition ="select from user where logname s ."+ logname t
d+
1=con. createStatement()
ResultSet rs= sql
dition)
boolean m=rs. next
(m== true)[
//调用登录成功的方法:
success(request, response, logname, password)i
RequestDispatcher dispatcher
request getRequestDispatcher("login. jsp"); //454
dispatcher. forward(request, response)
String backNews="您输人的用户名不存在,或密码不匹配";
//调用登录失败的方法
i1(
back News)
String backNews="请输入用户名和密码";
quest
ogame, back News)
close()
catch(SQLException exp)(
String backNews
n"+ exp
fail(
public void doget(HttpservletreQuest request HttpservletreSponse
response)throws
ServletExcepti
doPost(
on, IOException
d
(Ht
1
String
request
str
Login loginBean= null
Httpsession sessions request getsession(true);
tr
1
(Login
oginBe






loginBean= new Login
session. setAttribute("loginBean ", loginBean)i
//创建新的数据模型
oginBe
gin)
tribute(
r工r
login
get
if(name, equals(logname))(
1 oginBean. setBackNews(1 ogame+"已经登录了");
glnb
else i
loginBean. setBackNews( logname+"登录成功");
//数据模型存储新的登录用户
login
gname( logname)
catch( Exception ee)
session. setAttribute("loginBean", loginBean);
loginBean. setBackNews(1 ogame+"登录成功");
oginBean setL
(logname
publicvoidfail(httpservlEtrequestrequestHttpservleTresponseresponse
String logname, String backNews)t
response. setContentType("text/html; charset= GB2312")
try i
PrintWriter out= response. getWriter()i
out println("< html > body >)i
out. print1n("<h2>"+1 ogame+"登录反馈结果<br>"+ backNews+"</h2>");
out. print1n("返回登录页面或主页<br>");
out. print1n("< a href= login.jsp>登录页面</a>");
out println("<br>< a href index jsp >ED</a>)
out println("</body ></htm1>)i
catch( IOException exp)f)
