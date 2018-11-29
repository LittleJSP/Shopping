package myservlet contro
import javax. servlet. *i
importjavax.servlet.http.*
import java.1o.兴
public class Handleexit extends Httpservlet
public void init(ServletConfig config) throws ServletException
super init(config)i
public void dopost(hTtpservletrequest request HttpservletrespOnse
response)throws ServletException, IOException t
Httpsession session=request. getsession(trUe);
session. invalidate
//销毁用户的 session对象
response. sendRedirect("index. jsp")i
//返回主页


public void doget(hTtpservletrequeSt request HttpservletresPonse
response)throws ServletException, IOException f
doPost(request, response)i
