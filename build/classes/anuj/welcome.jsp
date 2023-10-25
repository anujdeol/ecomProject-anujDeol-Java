<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style3.css">
<%@ page session = "false" %>
<%@ page isELIgnored="false" %>
<title>Ecommerce</title>
</head>
<body>
<% 
HttpSession session=request.getSession(false);
//out.println(session);
if(session!=null){
	//out.println("welcome");
	String name=(String)session.getAttribute("name");
%>
<div class="ui container">

<div class="headerr">
   <h2 class="ui header headerr1">
  <img src="images/user.png" class="ui circular image">
 <div class="content Username">
   <a href="profile.jsp"> <%=name%></a>
  </div>
   </h2>
  <h2 class="ui header headerr1">
  <i class="shopping cart icon"></i>
  <div class="content">
   <a href="cart.jsp">Cart</a>
  </div>
</h2>
<h2 class="ui header headerr1">
  <i class="sign-out icon"></i>
  <div class="content">
   <a href="logout.jsp">Logout</a>
  </div>
</h2>
</div>

<div class="items">

<div class="ui five column grid">

    <div class="column">
    <div class="ui fluid card">
    <div class="content price">
        
        <div class="header" href="#"> Rs 899</div>
      </div>
      <div class="image">
       <img src="images/TheAliceNetWork.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=999&name=TheAliceNetWork.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 499</a>
      </div>
      <div class="image">
       <img src="images/TheBookOfLostNames.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=499&name=TheBookOfLostNames.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 399</a>
      </div>
      <div class="image">
       <img src="images/SubtleArtOfNotGivingFuck.png" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header addto" href="addtocart.jsp?price=399&name=SubtleArtOfNotGivingFuck.png"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 599</a>
      </div>
      <div class="image">
       <img src="images/BrokenStars.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=599&name=BrokenStars.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 549</a>
      </div>
      <div class="image">
       <img src="images/DaisyJones.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=549&name=DaisyJones.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 699</a>
      </div>
      <div class="image">
       <img src="images/DefiningEvil.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=699&name=DefiningEvil.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  

  
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 499</a>
      </div>
      <div class="image">
       <img src="images/DogMan.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=499&name=DogMan.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 599</a>
      </div>
      <div class="image">
       <img src="images/EveryThingIsFucked.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=599&name=EveryThingIsFucked.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 799</a>
      </div>
      <div class="image">
       <img src="images/InnerSunshine.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=799&name=InnerSunshine.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 499</a>
      </div>
      <div class="image">
       <img src="images/Meluha.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=499&name=Meluha.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  
    <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 899</a>
      </div>
      <div class="image">
       <img src="images/SoftSkills.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=899&name=SoftSkills.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  
  
  
  
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 699</a>
      </div>
      <div class="image">
       <img src="images/TheAgeOfLight.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=699&name=TheAgeOfLight.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href=""> Rs 699</a>
      </div>
      <div class="image">
       <img src="images/TheHungerGames.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=699&name=TheHungerGames.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
        <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 999</a>
      </div>
      <div class="image">
       <img src="images/TheSevenSisters.jpeg" onClick="image(this)">
      </div>
      <div class="content PriceLabel">
        
        <a class="header" href="addtocart.jsp?price=999&name=TheSevenSisters.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 799</a>
      </div>
      <div class="image">
       <img src="images/WhyMenRape.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=799&name=WhyMenRape.jpeg"> + Add To Cart</a>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="ui fluid card">
    <div class="content PriceLabel">
        
        <a class="header" href="#"> Rs 799</a>
      </div>
      <div class="image">
       <img src="images/DinosaurPlanet.jpeg" onClick="image(this)">
      </div>
      <div class="content">
        <a class="header" href="addtocart.jsp?price=799&name=DinosaurPlanet.jpeg""> + Add To Cart</a>
      </div>
    </div>
  </div>
  
</div>



</div>
</div>	
<% 
}
else
{
response.sendRedirect("login.html");
}
%>
<script src="js/script.js"></script> 
</body>
</html>