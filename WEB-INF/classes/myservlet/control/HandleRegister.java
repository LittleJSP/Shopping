HandleRegister. java
package myservlet control
import mybean. data.*
import Java.Sq.兴
import java.io.兴;
import javax. servlet.*
importjavax.servlethttp.*i
public class Handleregister extends Http servlet
public void init( ServletConfig config)throws ServletException





uper init(co
try Class for Name("com mysql jdbc Driver");
catch(Exception e)1)
public String handleString( String s)
I tryi byte bb[ ]=s getBytes("iso-8859-1")
(bb)
catch( Exception ee)I
publicvoiddopost(httpservletrequEstrequestHttpservletreSponse
response)throws ServletException, IOException t
String uri="jdbc: mysql: //127.0.0. 1/shop? "+"user root&password =
characterEncoding=gb2312"i
Connection con
PreparedStatement sql
Register userBean= new Register()
/创建的 Javabean模型
request setAttribute("userBean", user Bean)i
String logname= request getParameter("logname").trim()
String password request getParameter("password"). trim()
String again password= request getParameter("again password").trim()i
String phone= request getParameter("phone"). trim(;
String address request getParameter("address"). trim();
String realname request getParameter("realname"). trimo
if(logname = null)
ifpassword ==null)
if(! password equals(again password))I
userBean. setBackNews("两次密码不同,注册失败,");
RequestDispatcher dispatcher
request getRequestDispatcher("inputRegisterMess jsp")
dispatcher. forward(request, response)
//转发
10
boolean isLD= true;
for(int i=0; i<l
length(): 1++)1
char c= logname charAt(i)i
if(!(c<=zsc>='a")‖(c<="z'sc>="A')‖(c<="9sc>=0)
用户
isLD= fal
的用户名
boolean boo= logname length()> 0&&password length()>0&&isLD
该模
String backNews =
息到控制
try con=DriverManager get Connection(uri)
录的信息
String insertCondition="INSERT INTO user VALUES(?,?,?,?,?)";
sql=con. prepareStatement( insertCondition
更新视图
if(boo)
I sql setString( 1, handleString(logname));
String(2, handle
ring( password))
视图


sql setString(3, handleString( phone))
sql: setString(4, handleString( address))
sql setString(5, handleString(realname))
int m= sql executeUpdate(
f(m!=0){
backNews="注册成功";
userBean setBack News(back News)i
userBean.setLogname(logname);
userBean. setPhone( handleString(phone))
userBean. setAddress(handleString(address))i
userBean. setRealname( handleString(realname))i
else I
backNews="信息填写不完整或名字中有非法字符";
user Bean. setBackNews(back News)
close()
catch( SQLException exp)t
backNews="该会员名已被使用,请您更换名字"+exp;
userBean. setBackNews(backNews )i
RequestDispatcher dispatcher
request getRequestDispatcher("inputRegisterMess jsp")
dispatcher. forward(request, response
//转发
public void doget(hTtpservletrequEst request HttpservletreSponse
response) throws ServletException, IOException I
doPost(request, response)
