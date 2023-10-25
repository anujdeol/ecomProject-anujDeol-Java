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
<%@ page import="com.anuj.*" %>

<%@ page import="java.util.*,org.hibernate.Session,org.hibernate.*,org.hibernate.SessionFactory,org.hibernate.Transaction,org.hibernate.cfg.Configuration,com.anuj.*" %>

<title>Ecommerce</title>
</head>
<body>
<% 
HttpSession session=request.getSession(false);
//out.println(session);
if(session!=null){
	//out.println("welcome");
	String name=(String)session.getAttribute("name");
	out.println("</br");

    Configuration con=new Configuration().configure();
	SessionFactory sf=con.buildSessionFactory();
	Session session1=sf.openSession();
	
	List<Product> al=new ArrayList();
	Transaction tx=session1.beginTransaction();
	Query q1=session1.createQuery("from User where ID=:ID");
	q1.setParameter("ID",name);
	User u=(User)q1.uniqueResult();
	if(u!=null){
	al=u.getProduct();
	}
	
	long sum=0;
	//Query q2=session1.createQuery("select sum(price) from Product");
	//sum=(long)q2.uniqueResult();
	%>
	<div class="ui items">
	<%
	
	for(int i=0;i<al.size();i++)
	{
		//out.println(al.get(i).getName());
		String pName=al.get(i).getName();
		//String[] str=pName.split(".",0);
		 String[] str = pName.split("[, ?.@]+");
		String a=str[0];
		sum+=al.get(i).getPrice();
		//out.println(al.get(i).getPrice());
		%>
	
	
	<div class="ui items">

  <div class="item">
    <div class="image">
      <img src="images/<%=al.get(i).getName() %>">
    </div>
    <div class="content">
      <a class="header"><%=a %></a>
      <div class="meta">
        <span>Price:Rs <%=al.get(i).getPrice() %></span>
      </div>
      <div class="description">
        <p></p>
      </div>
     
      
      <a href="minusfromcart.jsp?price=<%=al.get(i).getPrice()%>&name=<%=al.get(i).getName() %>" > <button class="negative right attached ui button">-</button>  </a>
             
       <a href="addtocartfromcart.jsp?price=<%=al.get(i).getPrice()%>&name=<%=al.get(i).getName() %>" > <button class="positive right attached ui button">+</button>  </a>
     
      <div class="extra">
        Additional Details
      </div>
      
    </div>
  </div>

	<%
		
		
		
	}
	%>
	</div>

    <button class="blue ui button"><i class="cart plus icon"></i> Total : Rs <%=sum %> </button>
   	
</br></br>
<button class="ui right labeled icon button">
  <i class="right arrow icon"></i>
  Proceed To Checkout
</button>
</br>
</br>
	<%
	}
%>

</body>
</html>