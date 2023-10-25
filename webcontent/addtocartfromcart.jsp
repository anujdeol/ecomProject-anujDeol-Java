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

<%@ page import="java.util.*,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,org.hibernate.cfg.Configuration,com.anuj.*" %>
<title>Ecommerce</title>

</head>
<body>
<script src="js/script1.js"></script>
<% 
HttpSession session=request.getSession(false);
//out.println(session);
if(session!=null){
	//out.println("welcome");
	String name=(String)session.getAttribute("name");
	//out.println(name);
    String Pname=request.getParameter("name");
    String price=request.getParameter("price");
    int Pprice=Integer.parseInt(price);
    if(Pname!=null)
    {
    
    
    Configuration con=new Configuration().configure();
	SessionFactory sf=con.buildSessionFactory();
	Session session1=sf.openSession();
	

	Transaction tx=session1.beginTransaction();
	
    Product p=new Product(Pprice,Pname); 
 	User g1=(User)session1.get(User.class,name);
	if(g1==null)
	{
		List<Product> al=new ArrayList<Product>();
		al.add(p);
		User u=new User(name,al);
		session1.save(u);
	}
	else
	{
		List<Product> al=g1.getProduct();
		al.add(p);
		session1.save(g1);
		
	}
	tx.commit();
	session1.flush();
	session1.close();
	sf.close();
    }
	//response.sendRedirect("welcome.jsp");
     RequestDispatcher rd=request.getRequestDispatcher("cart.jsp");
     rd.include(request, response);
}
%>

</body>
</html>