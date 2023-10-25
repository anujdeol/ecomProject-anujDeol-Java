<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style4.css">
<%@ page session = "false" %>
<%@ page isELIgnored="false" %>
<title>E-commerce</title>
</head>
<body>
<% 
HttpSession session=request.getSession(false);
//out.println(session);
if(session!=null){
	//out.println("welcome");
	String name=(String)session.getAttribute("name");
	out.println(name);
	session.invalidate();
	response.sendRedirect("login.html");
}
else
{
	response.sendRedirect("login.html");
}
%>

</body>
</html>