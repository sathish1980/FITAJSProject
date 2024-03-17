<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String name=request.getParameter("uname");  
out.print("welcome to FITA You have choosen the Course :  "+name);   %> 
<div align="right" style="vertical-align: top;">Current Time: <%= java.util.Calendar.getInstance().getTime() %>  
</div>
<%!   
int GetCourseFees(String CourseName){  
	String[] courses ={"python-15000","java-12000","c#-20000","testing-13000"};
	for(String eachValue :courses)
	{
	String[] splitCources = eachValue.split("-");
	if(splitCources[0].equalsIgnoreCase(CourseName))
	{
		return Integer.parseInt(splitCources[1]);
	}
	}
return 0;  
}  
%> 
<jsp:useBean id="obj" class="Basics.CorseEvaluation"/>  

<%! int CourseFees=10000; %>  
<% out.print("Your course Fees is : "+obj.GetCourseFees(name)); %>
<br>
<div style="color:MediumSeaGreen;">
<marquee width="60%" direction="right" height="100px">
<%= "Have a Nice Day" %> </marquee>	 </div>
</br>
<a href="Login.jsp">login</a>| 
</body>
</html>