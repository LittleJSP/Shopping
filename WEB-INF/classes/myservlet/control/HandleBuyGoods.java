package myservlet. control;
import mybean. data. Login;
import java. sql.*
import java.util.*
import java.io.��;
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
fai1( request, response,"���ﳵû����Ʒ,�޷����ɶ���");
return;




String price request getParameter("price")
if(price==null price. length()==0)(
fai1( request, response,"û�м���۸��,�޷����ɶ���");
float sum= Float parseFloat(price)
Login loginBean= null;
Httpsession sessions request getsession(true)i
tryi loginBean=(Login)session. getAttribute("loginBean")
boolean b=loginBean getLogname()==null ll
loginBean. getLogname(). length()==0;
f(b)
response. sendRedirect("1ogin.jsp");//�ض��򵽵�¼ҳ��
catch( Exception exp)t
response. sendRedirect("login. jsp")i
//�ض��򵽵�¼ҳ��
String uri="jdbc: mysql: //127.0.0. 1/shop?"+
user root&password &character Encoding gb2312"i
Connection con;
PreparedStatement sqli
try[ con= DriverManager get Connection(uri)
String insertCondition="INSERT INTO orderform VALUES(?,?,?,?)"i
sql= con. prepareStatement(insertCondition)i
sql setInt(1, 0);
//������Ż��Զ�����
sql setString(2, loginBean. getLogname())i
String(3, buyGoodsMess)
sql setFloat(4, sum)
sql executeUpdate()
LinkedList car loginBean. getCar();
car.c��ear
()
//��չ��ﳵ
success( request, response,"���ɶ����ɹ�");
catch(SQLException exp)(
fai1( request, response,"���ɶ���ʧ��"+exp);
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
ln("������ҳ");
out. println("< a href= index.jsp>��ҳ</a>");
("<br>�鿴����")




out. println("< a href= lookOrderForm.jsp>�鿴����<a>");
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
out. print1n("������ҳ:");
out. println("< a href= index.jsp>��ҳ</a>");
out println("</body ></html>")
catch(IOException exp)()
