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

<title>��ҳ</title>
<body>
<div id="body_warpper">
<div class="header">
 <ul>
    <li><a href="exitServlet">�˳�</a></li>
    <li><a href="inputRegisterMess.jsp#content">ע��</a></li>
    <li><a href="login.jsp#content">��¼</a></li>
  </ul>
<div class="zhongjian"> <h1>��������</h1></div>

   
<p>Ȱ��Īϧ�����£�Ȱ��ϧȡ����ʱ</p>
 
<div align="center" class="daohang">
<ul>
  <li><a href="index.jsp">��ҳ</a></li>
  <li><a href="lookCosmetic.jsp#content">����鼮</a>
    <ul><a href="#">������</a></ul>
    <ul><a href="#">ͼ��</a></ul>
</li>
  <li><a href="searchCosmetic.jsp#content">��ѯ�鼮</a></li>
  <li><a href="lookOrderForm.jsp#content">�鿴����</a></li>
   <li><a href="lookShoppingCar.jsp#content">�ҵĹ��ﳵ</a></li>
</ul>
</div>
</div></div>

</body>
</html>


