<% page content Type="text/html;charset=gb2312"%>
<% page import="mybean. data. Login"%>
<% page import ="javautil.*
��>
<isp: useBean id= nloginBean"class= mybean. data. Login" scope="session"/>
<mML><EAD><��@ include file="head.txt����></EAD>E(E
BODY background= image/back. jpg >< font size=2>
<div align="center">
< if(loginBean == null)(
��
response. sendRedirect(��gin.jspy))/�ض��򵽵�¼ҳ��
else I
11v9)��E,,61
boolean b =loginBean getLogname()==null l
loginBean. getLogname(). length()==0
f(b)
��
response. sendRedirect(" login. jsp")/�ض��򵽵�¼ҳ������
LinkedList car= loginBean getCar()i
if(car==null)
out. print("<h2>���ﳵû����Ʒ.</h2>")
lse i
Iterator String> iterator= car. iterator ()i
StringBuffer buyGoods= new StringBuffer()i
int n=0:
double priceSum =0;
out. print("���ﳵ�е���Ʒ:< table border=2>");
while(iterator hasNext())(
String goods =iterator. next()i
String showGoods
//���ﳵ��Ʒ�ĺ�׺�ǡ�#�۸�����",���硱��ױƷ�۸�3989#3989
int index= goods. lastIndexOf("#")i




if(index=-1)
priceSum+=Double. parseDouble( goods. substring( index +1))i
showGoods goods substring(, index)
buyGoods. append (n+ :+ showGoods)i
��,���� String del="< form action=' deleteServlet' method=post">"+
input type ='hidden'name='delete' value =" goods+">
"+"< input type=' submit! value='ɾ����></form>
out. print("<tr>< td>+ showGoods +"</td>")
at print("<td>+ del+"<td></tr
out. print("</table>")
String orderForm"<form action='buyServlet' method=,post>"+
w <input type ='hidden'name ='buy' value =" buyGoods+">+
n input type ='hidden' name='price' value= m+priceSum+>+
put type =submit val
���ɶ���"></for
t print(order Form)
8>
</div></font>
</BODY></HTML>
