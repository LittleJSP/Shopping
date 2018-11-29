<8@ page contentType="text/html; charset=gb2312"8>
<80 page import="mybean. data. DataBy Page"%>
ks@ page import="com. sun rowset. *"s>
<jsp: useBean id="dataBean'"
class="mybean. data. DataBy Page"scope="session"/>
<号@ include file="head.txt”8></HEAD>
<HTML > Body background= image/back. jpg><center>
BR>当前显示的内容是
<table border =2>
<tr>
<th>化妆品标识号</th>
<th>化妆品名称</th>
<th>化妆品制造商</th>
<th>化妆品价格</th>
<th>查看详情</th>
<td>< font color=blue>添加到购物车</font></td>
<tr>
<jsp: setProperty name="dataBean" property="pageSize"param="pageSize">
<jsp: setProperty name ="dataBean"property="currentPage"param="current Page"/>
CachedRowSetImpl rowSet dataBean getRowSet()i
if(rowSet==null)
print("没有任何查询信息,无法浏览");
return
rowSet.last)
int totalRecord= rowSet. getRow()i
out. print1n("全部记录数”+ totalRecord);
//全部记录数
int pageSize= dataBean getPageSize()
int totalpages dataBean getTotalPages()
//每页显示的记录数
if(total Record pageSize==0)
totalPages totale
ecord/ pageSize
//总页数
el
totalPages= totalReco
rd/pageSize+1
dataBean. setpagesize(pageSize);
dataBean.setTotalPages( totalPages)i
Lf(totalPages >=1)(
if(dataBean, get CurrentPage ()<1)
ataBean. setCurrentPage( dataBean. getTotalPages())
if(dataBean getCurrentPage()> dataBean getTotalPages())
dataBean. setCurrentPage(
int index =( dataBean getcurrentPage()-1)* pageSize+ li
rowSet. absolute( index)
//查询位置移动到 currentPage页起始位置
for(int i=1: i< pageSize&&boo; 1++)f
String number rowSet getString(1)
String name=rowSet. getString(2)i
String maker= rowSet. getString(3)


String price rowSet getString(4);
String go
ds
+ number nn+ name x m
maker
+price+")#+ price;
/便于购物车计算价格,尾缀上”#价格值
goods goods replaceAll("\\p( Blank),)i
String button="<form action='put Goods Servlet method =post>"+
" input type ='hidden'name =java value =+ goods+>+
"< input type=' submit' value='放入购物车'></form>";
String detail="< form action='showDetail jsp'method = 'post'>"+
" input type ='hidden'name='xijie' value=+ number+>+
"< input type=' submit! value='查看细节’></form>";
out. print("<tr>)
out. print("<td>+ number +"</td>")
out.print("<td>+ name+"</td>")
out. print("<td>+ maker+"</td>);
out. print("<td>"+ price +"</td>);
out. print("<td>+ detail +"</td>");
out. print("<td>"+ button +"</td>")
out
t("</tr>");
boo= rowSet. nexto;
8>
</table>
<BR>每页最多显示<sp: getProperty name=" dataBean" property=" pageSize"少条信息
<BR>当前显示第< Font color=blue>
jsp: getProperty name="dataBean"property="currentPage"/>
</Font>页,共有
< Font color- blue ><jsp: getProperty name="dataBean"property="totalPages"/>
</Font>页
Table>
<tr>< td > FORM action=method= post
Input type= hidden name ="currentPage"value=
"<%= dataBean getCurrentPage()-1%>>
< Input type= submit name="g" value="上一页"></FoRM></td>
< td > FORM action="method=post>
Input type hidden name ="currentPage"
value="<%= dataBean getCurrentPage()+1>">
< Input type= submit name="g" value="下一页"></FoRM></td></tr>
<tr>< td> FORM action= method= post>
每页显示< Input type= text name= pageSize" value=1size=3>
条记录< Input type= submit name="g" value="确定"></FoRM></td>
<td> FORM action= method= post>
输入页码:< Input type= text name=" currentPage"size=2>
Input type= submit name="g" value ="H3"></FORM></td></tr>
</Table>
</Center
</BODY ></HTML>
