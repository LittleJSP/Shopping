package myservlet. control;
import mybean. data. Login;
import java.uti1.头
mport java.io.米
import javax. servlet. *i
importjavax.servlethttp.*i
public class PutgoodstocAr extends Httpservlet
public void init(ServletConfig config) throws ServletException I
super init(config)
public void dopost(HttpservletrequEst request HttpservletreSponse
2朋,
response) throws ServletException, IOException


request. setCharacterEncoding
("gb2312");
String goods request getParameter("java)i
System. out. println( goods)
Login loginBean= null
Httpsession session= request. getsession(True)i
try loginBean =(Login)session. getAttribute("loginBean
boolean b= loginBean getLogname ()== null ll
loginBean. getLogname(). length()==0
if(b)
response. sendRedirect("login. jsp
);//重定向到登录页面
LinkedList< String> car loginBean getCar();
car. add( goods )i
speak SomeMess(request, response, goods)
catch(Exception exp)t
response. sendRedirect("login. jsp");
//重定向到登录页面
public void doget(HttpservletreQuest request HttpservletrEsponse
response) throws ServletException, IOException f
doPost(request, response)i
publicvoidspeaksomemess(httpsErvletrequestrequest
HttpservletrespOnse response String goods)i
resp
e setContentType("text/html; charset=GB2312")
try
PrintWriter out =response. ge
out.print("<%@ include file='head. txt%></HEAD>)i
out println("<htm1 ><bo
t println(<h2>+ go
放入购物车</h2>
out. print1n("查看购物车或返回浏览化妆品<br>");
out. println("< a href=1 ook ShoppingCart.jp>查看购物车</a>")
out.pint1n("<br>< a href= byPageshow.3p>浏览化妆品</a>");
out. p
("</hoy></htm>");
tch(IOException exp)F
