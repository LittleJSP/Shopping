<8@ page contentType="text/html; charset=gb2312"8>
<80 page import="mybean. data. DataBy Page"%>
ks@ page import="com. sun rowset. *"s>
<jsp: useBean id="dataBean'"
class="mybean. data. DataBy Page"scope="session"/>
<��@ include file="head.txt��8></HEAD>
<HTML > Body background= image/back. jpg><center>
BR>��ǰ��ʾ��������
<table border =2>
<tr>
<th>��ױƷ��ʶ��</th>
<th>��ױƷ����</th>
<th>��ױƷ������</th>
<th>��ױƷ�۸�</th>
<th>�鿴����</th>
<td>< font color=blue>��ӵ����ﳵ</font></td>
<tr>
<jsp: setProperty name="dataBean" property="pageSize"param="pageSize">
<jsp: setProperty name ="dataBean"property="currentPage"param="current Page"/>
CachedRowSetImpl rowSet dataBean getRowSet()i
if(rowSet==null)
print("û���κβ�ѯ��Ϣ,�޷����");
return
rowSet.last)
int totalRecord= rowSet. getRow()i
out. print1n("ȫ����¼����+ totalRecord);
//ȫ����¼��
int pageSize= dataBean getPageSize()
int totalpages dataBean getTotalPages()
//ÿҳ��ʾ�ļ�¼��
if(total Record pageSize==0)
totalPages totale
ecord/ pageSize
//��ҳ��
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
//��ѯλ���ƶ��� currentPageҳ��ʼλ��
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
/���ڹ��ﳵ����۸�,β׺�ϡ�#�۸�ֵ
goods goods replaceAll("\\p( Blank),)i
String button="<form action='put Goods Servlet method =post>"+
" input type ='hidden'name =java value =+ goods+>+
"< input type=' submit' value='���빺�ﳵ'></form>";
String detail="< form action='showDetail jsp'method = 'post'>"+
" input type ='hidden'name='xijie' value=+ number+>+
"< input type=' submit! value='�鿴ϸ�ڡ�></form>";
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
<BR>ÿҳ�����ʾ<sp: getProperty name=" dataBean" property=" pageSize"������Ϣ
<BR>��ǰ��ʾ��< Font color=blue>
jsp: getProperty name="dataBean"property="currentPage"/>
</Font>ҳ,����
< Font color- blue ><jsp: getProperty name="dataBean"property="totalPages"/>
</Font>ҳ
Table>
<tr>< td > FORM action=method= post
Input type= hidden name ="currentPage"value=
"<%= dataBean getCurrentPage()-1%>>
< Input type= submit name="g" value="��һҳ"></FoRM></td>
< td > FORM action="method=post>
Input type hidden name ="currentPage"
value="<%= dataBean getCurrentPage()+1>">
< Input type= submit name="g" value="��һҳ"></FoRM></td></tr>
<tr>< td> FORM action= method= post>
ÿҳ��ʾ< Input type= text name= pageSize" value=1size=3>
����¼< Input type= submit name="g" value="ȷ��"></FoRM></td>
<td> FORM action= method= post>
����ҳ��:< Input type= text name=" currentPage"size=2>
Input type= submit name="g" value ="H3"></FORM></td></tr>
</Table>
</Center
</BODY ></HTML>
