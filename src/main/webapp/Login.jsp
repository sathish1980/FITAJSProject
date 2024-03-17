<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= "Welcome To FITA" %></title>
</head>
<body>
<br>
<% 
String name=request.getParameter("uname");  
out.print("welcome "+name);  
%>
</br> 
<br>
<div align="right" valign="top" style="color:Tomato;">
Current Time: <%= java.util.Calendar.getInstance().getTime()  %>
</div>
</br>

<%! double tax=0.03; %> 
<%= "tax percentage is:"+tax %>  
<%!   
int NameLength(String Name){  
return Name.length();  
}  
%> 
<%!   
String CourseDetails(String CourseName){  
String[] Course ={"Java,Python,C#,Testing"};
for(String eachcourse:Course)
	if(eachcourse.equalsIgnoreCase(CourseName))
		return CourseName;
return "Course Not Available";
}  
%> 
<br>
<div>
<span style="color:darkolivegreen;font-weight:bold;">
<marquee width="60%" direction="up" height="100px">
<%= "The Name length is:"+NameLength(name) %> 
<br>
<%= "The Requested Course is :" +CourseDetails(name) %> 
</br>
</marquee>
</span>
</div>
</br> 
<jsp:forward page="Login.jsp" />  
</body>
</html>