<%@ page contentType="text/html;charset=gb2312" %>
<html>
<head>
<style type="text/css">
@import url("css/index.css");
</style>
<script type="text/javascript">
startList=function(){
if(document.all&&document.getElementByld){
navRoot=document.getElementByld("nav");
for(i=0;i<navRoot.childNodes.length;i++){
node=navRoot.childNodes.length;i++){
node=navRoot.childNodes[i];
if(node.nodeName=="LI){
node.onmouseover=function(){
this.className+="over";
}
node.onmouseout=function(){
this.className=this.className.replace("over","");
}}}}}
window.onload=startList;
</script>

</head>

<title>首页</title>
<body>
<div id="body_warpper">
<div class="header">
 <ul>
    <li><a href="exitServlet">退出</a></li>
    <li><a href="inputRegisterMess.jsp#content">注册</a></li>
    <li><a href="login.jsp#content">登录</a></li>
  </ul>
<div class="zhongjian"> <h1>神奇书屋</h1></div>

   
<p>劝君莫惜金缕衣，劝君惜取少年时</p>
 
<div align="center" class="daohang">
<ul>
  <li><a href="index.jsp">首页</a></li>
  <li><a href="lookCosmetic.jsp#content">浏览书籍</a>
    <ul><a href="#">电子书</a></ul>
    <ul><a href="#">图书</a></ul>
</li>
  <li><a href="searchCosmetic.jsp#content">查询书籍</a></li>
  <li><a href="lookOrderForm.jsp#content">查看订单</a></li>
   <li><a href="lookShoppingCar.jsp#content">我的购物车</a></li>
</ul>
</div>
</div></div>

</body>
</html>


