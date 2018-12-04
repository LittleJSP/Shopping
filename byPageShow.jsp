<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="mybean.data.DataByPage" %>
<%@ page import="com.sun.rowset.*" %>
<jsp:useBean id="dataBean" class="mybean.data.DataByPage" scope="session"/>
<%@ include file="head.txt" %></HEAD>
<HTML><Body>

<head><style type="text/css">
@import url("css/liulanshuji.css");
</style>
</head>

<div class="content align="center">
<center>
<BR>当前显示的内容是：
  <table border=2>
<tr>
    <th>化妆品标识号</th>
    <th>化妆品名称</th>
    <th>化妆品制造商</th>
    <th>化妆品价格</th>
    <th>查看详情</th>
    <td><font color=brown>添加到购物车</font></td>
  </tr>
<jsp:setProperty name="dataBean" property="pageSize" param="pageSize"/>
<jsp:setProperty name="dataBean" property="currentPage" param="currentPage"/>
<%
  CachedRowSetImpl rowSet=dataBean.getRowSet();
  if(rowSet==null){
    out.print("没有任何查询信息,无法浏览"+"<br/>");
    out.print("<font size=6>我真的佛了，什么都查不到，你已经是个成熟的程序语言了，不要让你的主人这么操心好不好？？？</font>");
    return;
  }
  rowSet.last();
  int totalRecord=rowSet.getRow();
  out.println("全部记录数"+totalRecord);   //全部记录数
  int pageSize=dataBean.getPageSize();    //每页显示的记录数
  int totalPages=dataBean.getTotalPages();
  if(totalRecord%pageSize==0)
  totalPages=totalRecord/pageSize;  //总页数
  else
   totalPages=totalRecord/pageSize+1;
   dataBean.setPageSize(pageSize);
   dataBean.setTotalPages(totalPages);
  if(totalPages>=1){
    if(dataBean.getCurrentPage()<1)
      dataBean.setCurrentPage(dataBean.getTotalPages());
    if(dataBean.getCurrentPage()>dataBean.getTotalPages())
      dataBean.setCurrentPage(1);
    int index=(dataBean.getCurrentPage()-1)*pageSize+1;
    rowSet.absolute(index);
    //查询位置移动到currentPage页起始位置
    boolean boo=true;
    for(int i=1;i<=pageSize&&boo;i++){
      String number=rowSet.getString(1);
      String name=rowSet.getString(2);
      String maker=rowSet.getString(3);
      String price=rowSet.getString(4);
      String goods="("+number+","+name+","+maker+","+price+")#"+price;
      //便于购物车计算价格,尾缀上"#价格值"
      goods=goods.replaceAll("\\p{Blank}","");
      String button="<form action='putGoodsServlet' method='post'>"+
        "<input type='hidden' name='java' value="+goods+">"+
        "<input type='submit' value='放入购物车'></form>";
      String detail="<form action='showDetail.jsp' method='post'>"+
        "<input type='hidden' name='xijie' value="+number+">"+
        "<input type='submit' value='查看细节'></form>";
      out.print("<tr>");
      out.print("<td>"+number+"</td>");
      out.print("<td>"+name+"</td>");
      out.print("<td>"+maker+"</td>");
      out.print("<td>"+price+"</td>");
      out.print("<td>"+detail+"</td>");
      out.print("<td>"+button+"</td>");
      out.print("</tr>");
      boo=rowSet.next();
    }
  }
%>
</table>
<BR>每页最多显示<jsp:getProperty name="dataBean" property="pageSize" />条信息
<BR>当前显示第<Font color=blue>
  <jsp:getProperty name="dataBean" property="currentPage"/>
</Font>页,共有
<Font color=blue><jsp:getProperty name="dataBean" property="totalPages" />
</Font>页.
<Table>
  <tr><td><FORM action="" method=post>
    <Input type=hidden name="currentPage" value="<%=dataBean.getCurrentPage()-1 %>" >
      <Input type=submit name="g" value="上一页"></FORM></td>
  <td><FORM action="" method=post>
     <Input type=hidden name="currentPage" value="<%=dataBean.getCurrentPage()+1 %>" >
       <Input type=submit name="g" value="下一页"></FORM></td></tr>
  <tr><td><FORM action="" method=post>
  每页显示<Input type=text name="pageSize" value=1 size=3>
  条记录<Input type=submit name="g" value="确定"></FORM></td>
  <td><FORM action="" method= post>
    输入页码:<Input type=text name="currentPage" size=2>
    <Input type=submit name="g" value ="提交"></FORM></td></tr>
</Table>
</Center>
</div>


<div class="footer">
<p align="center"><a href="index.jsp">首页</a> | 
<a href="ookCosmetic.jsp#content">浏览书籍</a>| 
<a href="searchCosmetic.jsp#content">查询书籍</a> | 
<a href="lookOrderForm.jsp#content">查看订单</a> | 
<a href="lookShoppingCar.jsp#content">我的购物车</a>
<br /><br />
Copyright &copy; &nbsp;<a href="index.jsp">神奇书屋</a>&nbsp;&nbsp;2018&nbsp;&nbsp;| &nbsp;&nbsp;热线：888-520-1314&nbsp;&nbsp;| &nbsp;&nbsp;地址：深圳市南山区华侨城暨南大学深圳旅游学院</p> 
</div>
</div>


</BODY ></HTML>
