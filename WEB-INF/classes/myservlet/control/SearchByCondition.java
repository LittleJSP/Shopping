package myservlet control
import mybean. data. DataByeage
import com. sun rowset. * i
import java. sql.*i
import Java.10.��
import javax. servlet.*
importjavax.servlethttp.*i
public class Searchbycondition extends Httpservleti
CachedRowSetImpl rowSet= nulli




public void init( ServletConfig config) throws ServletExceptionf
super init(config);
try[ class forName(com. mysql jdbc Driver");
catch(Exception e)
public void dopost(HttpservletrequeSt request HttpservletreSponse
response) throws ServletException, IOException
request setCharacterEncoding("gb2312")
String searchLess= request getParameter("searchLess")
String radioMess= request getParameter("radio")
if(searchLess ==null searchLess length()==0)
fail( request, response,"û�в�ѯ��Ϣ,�޷���ѯ");
return
String condition=i
if(radioMess equals("cosmetic number"))i
condition
"SELECt FROM cosmeticForm where cosmetic number ='" searchLess +"i
else if(radioMess equals("cosmetic_name"))t
condition ="SETECT FROM cosmeticForm where cosmetic_name LTKE'8+ searchLess +8,
else if(radioMess equals("cosmetic_price"))I
double max=0, min=0;
String regex="[^0123456789.]";
String[ priceMess searchMess split(regex)
if(priceLess length==1)
max =min Double parseDouble(priceLess[ o])i
e��se
f(priceLess length == 2)
min= Double. parseDouble(priceLess[O])
max= Double. parseDoublepriceLess[1]);
if(max min)
double t = max
in t
��
��
else i
fail( request, response,"����ļ۸��ʽ�д���");
return;
condition =SELECT FROM cosmeticForm where+
"cosmetic_price <= max+ AND cosmetic_price>=+min i
Httpsession session request getsession(True);
������
Connection con null
DataBy Page dataBean= null;
dataBean=(DataByPage)session. getAttribute("dataBean"




f( dataBean ==nu
dataBean new DataBy Page()
//���� Javabean����
ession setAttribute("dataBean" data
catch( Exception exp
dataBean new DataByPage )i
session. setAttribute("dataBean", dataBean
String
1://127.0.0.1/sh
Muser root&password =&characterEncoding=gb2312"
con= DriverManager get Connection(uri);
Statement
sql=con. createStatement( ResultSet. TYPE SCROLL SENSITIVE,
Resultset CONCUR READ ONLY)
ResultSet rs= sql executeQuery( condition)
rowSet= new CachedRowSetImp1();
//�����м�����
Set populate(rs)i
dataBean. setRowSet (rowSet);
//�м����ݴ洢�� dataBean��
con. close();
/�ر�����
catch( SQLException exp)I
response. sendRedirect("byPage Show jsp")
//�ض��� by Pageshow.jsp
public void doget(hTtpservletreqUest request HttpservletresPonse
response) throws ServletException, IOExceptionI
doPost(request, response)
publicvoidfail(httpservlEtrequestrequestHttpservletResponseresponseStringbacknews)
response.setContentType("text/html; charset= GB2312")
PrintWriter out= response. getWriter();
out println("<html > body>")
outprintln("<h2>+ back News +</h2>")
out. println("����:")
out. println("< a href= searchCosmetic.jsp>��ѯ��ױƷ</a>");
out println("</body ></htm1>")
catch(IOException exp)(unn-0At
