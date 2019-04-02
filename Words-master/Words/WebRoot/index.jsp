<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

 <% 
      TreeMap<String,Integer> map1=(TreeMap)request.getAttribute("map1");
  
 %>
<html>
  <head>  
    <title>词频统计</title>
  </head> 
 <script type="text/javascript">
 function one(){
      var filename=document.getElementById("file");
 location.href = "../WordCountServlet?filename=" + filename + "&id=0";
 }
 function two() {

		var word = document.getElementById("word").value;

		location.href = "../WordCountServlet?word=" + word + "&id=1";
	}
function three() {
		var wordnum = document.getElementById("wordnum").value;

		location.href = "../WordCountServlet?wordnum=" + wordnum + "&id=2";

	}
	function four() {
		var wordlines = document.getElementById("wordlines").value;
		location.href = "../WordCountServlet?wordlines=" + wordlines + "&id=3";
		
	}
	function five() {
		var result = document.getElementById("result").value;
		location.href = "../WordCountServlet?result=" + result + "&id=4";
	}

 </script> 
 <!-- 指定单词的查找 -->
  <body>
   
    <br><br><br><br><br><br><br><br><br><br><table align="center" style="height: 428px; ">
     <tr><td align="center"><p>
       <font color="pink" size="5" style="font-family:simhei">词频统计：</font><p>
       <form method="post" action="checkUser.jsp" target="_blank" style="width: 469px; height: 245px"><p>
       
          <input type="file" name="loginName" size="25" id="file"><p> 
          <input type="submit"  value="确认文件"  onchange="one();"></p>	
		1.请输入要查找的单词：
		<input type="text" name="loginName" size="25"><br><br>   
		<input type="submit" value="确认"><br><br>
		2.显示统计单词需要的时间：<input type="text"  size="25"  value="${excTime }"><br><br>
        <input type="submit" value="确认"><br><br>           
        3. 高频单词的统计：<input type="text" name="loginName" size="25"><br><br>
                     <input type="submit" value="确认"><br><br> 
        4. 文本的行数及字符数：<input type="text" name="loginName" size="25"><p>
        <input type="submit" value="确认"><br><br> 
         存放至：<input type="text" name="loginName" size="25"><p>
       <input type="submit" value="确认"><br><br>  
       <table border="1px" align="center" id="tab">
	<tr>
	<td>单词</td>
	<td>数量</td>
	</tr>
    <c:forEach items="${map1}" var="map1" varStatus="st">	
	<tr>
	<td>${map1.key}</td>
	<td>${map1.value}</td>
	</tr>
	</c:forEach>
	</table>   
	<table>
	<!--行数以及字符数的统计  -->
	  <tr>
	     <td>行数</td><td>字符数</td><td>单词数</td>
	  </tr>
	   <c:forEach items="${list}" var="list" varStatus="st">
	 <tr>
	   <td>${list}</td>
	 </tr>
	 </c:forEach> 
	</table>                 
       </form></td></tr>      
       </table> 
       
      
	
	
  </body>
</html>
