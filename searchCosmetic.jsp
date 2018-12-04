<%@ page contentType="text/html;charset=gb2312"%>
<HTML><HEAD><%@ include file="head.txt"%></HEAD>
<BODY background=image/happy.jpg><Font size=2>
<div align=center>
<br>查询时可以输入化妆品的版本号或化妆品名称及价格.<br>
化妆品名称支持模糊查询
<br>输入价格是在2个值之间的价格,格式是:价格1-价格2<br>
例如258-689
<FORM action="searchByConditionServlet" Method="post">
    <br>输入查询信息:<Input type=text name="searchMess"><br>
    <input type=radio name="radio" value="cosmetic_number">化妆品版本号
    <Input type=radio name="radio" value="cosmetic_name" checked="ok">化妆品名称
    <Input type=radio name="radio" value="cosmetic_price">化妆品价格
    <br><Input type=submit name="g" value="查询">
</Form>
</div>
</Font></BODY></HTML>
