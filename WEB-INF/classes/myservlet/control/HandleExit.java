package myservlet contro
import javax. servlet. *i
importjavax.servlet.http.*
import java.1o.��
public class Handleexit extends Httpservlet
public void init(ServletConfig config) throws ServletException
super init(config)i
public void dopost(hTtpservletrequest request HttpservletrespOnse
response)throws ServletException, IOException t
Httpsession session=request. getsession(trUe);
session. invalidate
//�����û��� session����
response. sendRedirect("index. jsp")i
//������ҳ


public void doget(hTtpservletrequeSt request HttpservletresPonse
response)throws ServletException, IOException f
doPost(request, response)i
