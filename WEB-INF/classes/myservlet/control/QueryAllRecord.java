package myservlet control
import mybean. data. DataByPage;
Import com. sun. rowset.*
import java.sq1.兴
mport java. io
import javax. servlet.*
importjavax.servlethttp.*i
public class Queryallrecord extends Http servlet(
CachedRowSetImpl rowSet= null
public void init( ServletConfig config) throws ServletException
super. init(config)
try Class for Name("com mysql. jdbc Driver")i
catch( Exception e)f)
public void dopost(HttpservletrequEst request HttpservletreSponse
response) throws ServletException, IOException
request setCharacterEncoding("gb2312");
String idNumber= request getParameter("fenleiNumber" );


if(inUmber
11)
mber ="O'
int id= Integer parseInt(idNumber)
Httpsession session= request. getsession(true
Connection con= nulli
DataByPage dataBean=null;
tr
Y
dataBean=(DataByPage)session. getAttribute("dataBean")i
f(dataBean
dataBean= new DataBy Page()i
//创建 Javabean对象
session. setAttribute("dataBean", dataBean)i
catch(Exception exp)
dataBean new DataByPage i
session. setAttribute("dataBean" dataBean)
String uri="jdbc: mysql: //127.0.0.1/shop
try
con= DriverManager getConnection(uri, root",);
Statement sql= con. createStatement(ResultSet TYPE_ wo
SCROLL SENSITIVE, ResultSet CONCUR_ READ_ ONLY)i
Resultset rs= sql executeQuery("SELECT FROM cosmeticForm where id ="+id)
rowSet=new CachedRowSetImp1()
//创建行集对象
rowSet. populate(rs)
dataBean. setRowSet(rowSet)
//行集数据存储在 dataBean中
con. close()i
/关闭连接
catch(SQLException exp
response. sendRedirect(" byPageshow.jsp");//重定向到 byPageshow.jsp
public void doget(hTtpservletrequEst request htTpservletrespoNse
response)throws ServletException, IOException(
doPost(request, response);
PutGoodsTo Car Java
