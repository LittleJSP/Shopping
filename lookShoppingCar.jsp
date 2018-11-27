<% page content Type="text/html; charset=GB2312"%>
<% page import="mybean. data. Login"%>
<% page import ="javautil.*
号>
<isp: useBean id= nloginBean"class= mybean. data. Login" scope="session"/>
<mML><EAD><号@ include file="head.txt”号></EAD>E(E
BODY background= image/back. jpg >< font size=2>
<div align="center">
< if(loginBean == null)(
的
response. sendRedirect(°gin.jspy))/重定向到登录页面
else I
11v9)空E,,61
boolean b =loginBean getLogname()==null l
loginBean. getLogname(). length()==0
f(b)
是
response. sendRedirect(" login. jsp")/重定向到登录页面文置
LinkedList car= loginBean getCar()i
if(car==null)
out. print("<h2>购物车没有物品.</h2>")
lse i
Iterator String> iterator= car. iterator ()i
StringBuffer buyGoods= new StringBuffer()i
int n=0:
double priceSum =0;
out. print("购物车中的物品:< table border=2>");
while(iterator hasNext())(
String goods =iterator. next()i
String showGoods
//购物车物品的后缀是”#价格数字",比如”化妆品价格3989#3989
int index= goods. lastIndexOf("#")i




if(index=-1)
priceSum+=Double. parseDouble( goods. substring( index +1))i
showGoods goods substring(, index)
buyGoods. append (n+ :+ showGoods)i
是,单多 String del="< form action=' deleteServlet' method=post">"+
input type ='hidden'name='delete' value =" goods+">
"+"< input type=' submit! value='删除’></form>
out. print("<tr>< td>+ showGoods +"</td>")
at print("<td>+ del+"<td></tr
out. print("</table>")
String orderForm"<form action='buyServlet' method=,post>"+
w <input type ='hidden'name ='buy' value =" buyGoods+">+
n input type ='hidden' name='price' value= m+priceSum+>+
put type =submit val
生成订单"></for
t print(order Form)
8>
</div></font>
</BODY></HTML>
