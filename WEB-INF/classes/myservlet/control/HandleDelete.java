package myservlet control
import mybean. data. Login;
import java.uti1.Ϊ;
import java.io.��
��
import javax. servlet. *i
importjavax.servlethttp.*i
public class Handledelete extends Httpservlet
public void init( ServletConfig config) throws ServletException t
super init(config)i



publicvoiddopost(httpservletrequeStrequestHttpservletreSponse
response) throws ServletException, IOException i
request. setCharacter Encoding("gb2312");
String delete request getParameter("delete")
Login loginBean= nulli
Httpsession session = request. getsession(true)i
try loginBean=(Login)session. getAttribute("loginBean")i
boolean b= loginBean getLogname()==null l
loginBean. getLogname (). length()==0;
if(b)
response. sendRedirect(" login.jsp");//�ض��򵽵�¼ҳ��
LinkedList String> car= loginBean. getCar()i
car. remove( delete
catch( Exception exp)t
response. sendRedirect("login. jsp")i
//�ض��򵽵�¼ҳ��
RequestDispatcher dispatcher
request getRequestDispatcher("look ShoppingCar jsp");
dispatcher. forward (request, response)
//ת��
response)throws ServletException, IOException/vletResponse
public void doget(hTtpservletreqUest request Httpse
doPost(request, response)i
