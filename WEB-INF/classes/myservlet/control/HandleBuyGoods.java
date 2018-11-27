package myservlet. control;
import mybean. data. Login;
import java. sql.*
import java.util.*
import java.io.兴;
import javax. servlet
importjavax.servlet.http.*
oublic class Handlebuygoods extends Httpservlet (
p
public void init( ServletConfig config)throws ServletException t
super init(config)
try
Class forName("com mysql jdbc Driver")
catch(Exception e)t
public void dopost(htTpservletrequest request HttpservletreSponse
response) throws ServletException, IOException I
request setCharacterEncoding(gb2312")
String buyGoodsMess request getParameter("buy");
if(buyGoodsMess ==null l buy GoodsMess length()==0)I
fai1( request, response,"购物车没有物品,无法生成订单");
return;




String price request getParameter("price")
if(price==null price. length()==0)(
fai1( request, response,"没有计算价格和,无法生成订单");
float sum= Float parseFloat(price)
Login loginBean= null;
Httpsession sessions request getsession(true)i
tryi loginBean=(Login)session. getAttribute("loginBean")
boolean b=loginBean getLogname()==null ll
loginBean. getLogname(). length()==0;
f(b)
response. sendRedirect("1ogin.jsp");//重定向到登录页面
catch( Exception exp)t
response. sendRedirect("login. jsp")i
//重定向到登录页面
String uri="jdbc: mysql: //127.0.0. 1/shop?"+
user root&password &character Encoding gb2312"i
Connection con;
PreparedStatement sqli
try[ con= DriverManager get Connection(uri)
String insertCondition="INSERT INTO orderform VALUES(?,?,?,?)"i
sql= con. prepareStatement(insertCondition)i
sql setInt(1, 0);
//订单序号会自定增加
sql setString(2, loginBean. getLogname())i
String(3, buyGoodsMess)
sql setFloat(4, sum)
sql executeUpdate()
LinkedList car loginBean. getCar();
car.c⊥ear
()
//清空购物车
success( request, response,"生成订单成功");
catch(SQLException exp)(
fai1( request, response,"生成订单失败"+exp);
public void doget(hTtpservletreQuest request HttpservletreSponse
response) throws ServletException, IOException
doPost(
publicvoidsuccess(httpservletrequestrequestHttpservlEtresponseresponseStringbacknews)T
response. setContentType("text/html; charset=GB2312")
ry i
PrintWriter out = re
se. getWriter()
out println("<html > body >)i
t println("<h2>"+ back News +</h2>")
ln("返回主页");
out. println("< a href= index.jsp>主页</a>");
("<br>查看订单")




out. println("< a href= lookOrderForm.jsp>查看订单<a>");
out println("</body ></html>")
catch(IOException exp
publicvoidfail(httpservletreQuestrequestHttpservletrespOnseresponse
String backNews)(
response. setContentType
("text/html; charset=GB2312")
try i
PrintWriter out= response. getWriter
();
out println("<html >< body >")
out println(< h2>+ backNews +"</h2>")
out. print1n("返回主页:");
out. println("< a href= index.jsp>主页</a>");
out println("</body ></html>")
catch(IOException exp)()
