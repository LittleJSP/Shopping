package myservlet. control;
import mybean. data. Login;
import java.uti1.ͷ
mport java.io.��
import javax. servlet. *i
importjavax.servlethttp.*i
public class PutgoodstocAr extends Httpservlet
public void init(ServletConfig config) throws ServletException I
super init(config)
public void dopost(HttpservletrequEst request HttpservletreSponse
2��,
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
);//�ض��򵽵�¼ҳ��
LinkedList< String> car loginBean getCar();
car. add( goods )i
speak SomeMess(request, response, goods)
catch(Exception exp)t
response. sendRedirect("login. jsp");
//�ض��򵽵�¼ҳ��
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
���빺�ﳵ</h2>
out. print1n("�鿴���ﳵ�򷵻������ױƷ<br>");
out. println("< a href=1 ook ShoppingCart.jp>�鿴���ﳵ</a>")
out.pint1n("<br>< a href= byPageshow.3p>�����ױƷ</a>");
out. p
("</hoy></htm>");
tch(IOException exp)F
