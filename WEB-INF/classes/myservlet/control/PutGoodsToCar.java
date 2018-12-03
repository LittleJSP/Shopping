package myservlet.control;
import mybean.data.Login;
import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class PutGoodsToCar extends HttpServlet{
public void init(ServletConfig config) throws ServletException{
super.init(config);
}
public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
request.setCharacterEncoding("gb2312");
String goods=request.getParameter("java");
System.out.println(goods);
Login loginBean=null;
HttpSession session=request.getSession(true);
try {loginBean=(Login)session.getAttribute("loginBean");
boolean b=loginBean.getLogname()==null||loginBean.getLogname().length()==0;
if(b)
response.sendRedirect("login.jsp");
LinkedList<String> car=loginBean.getCar();
car.add(goods);
speakSomeMess(request,response,goods);
}
catch(Exception exp){
response.sendRedirect("login.jsp");
}}
public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
doPost(request,response);
}
public void speakSomeMess(HttpServletRequest request,HttpServletResponse response,String goods){
response.setContentType("text/html;charset=gb2312");
try{
PrintWriter out =response.getWriter();
out.print("<%@ include file='head.txt' %></HEAD>");
out.println("<html><body>");
out.println("<h2>"+goods+"放入gouwuche</h2>");
out.println("chakangouwuchehuofanhuiliulanhuazhuangpin<br>");
out.println("<a href=lookShoppingCar.jsp>chakangouwuche</a>");
out.println("<br><a href=byPageShow.jsp>liulanhuazhuangpin</a>");
out.println("</body></htm>");
}
catch(IOException exp){}
}
}
