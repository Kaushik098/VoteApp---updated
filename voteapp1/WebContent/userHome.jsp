<%@page import="com.kaushik.voteapp.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Home page</title>

<style>

    nav{
        float: right;
    }
    h2{
		font-style: italic;
		text-align: center;
	}

	 body {
        border: 2px solid black;
        outline: #4CAF50 solid 10px;
        margin: auto; 
        margin-top: 30px;  
        padding: 20px;
		padding-bottom: 100px;
     }
	 
	 .container {
       border-radius: 30px;
       background-color: #f2f2f2;
       padding: 20px;
	   margin-left:300px;
	   margin-right:300px;
	   margin-top:80px;
    }
	
	.buttonalign1{
	  
	   float: left;
	   border-radius:10px;
	   margin-left: 100px;
	   font-size: 15px;
	}
	.buttonalign2{
     	
	    float: right;
		border-radius:10px;
		margin-right:100px;
		font-size: 15px;
	}
	
</style>


</head>

<body>

   <h2> Welcome to User page </h2>

	<nav>
        <a href = "login.jsp"> Logout</a>
       </nav>
	
	 <%
       User user = (User)session.getAttribute("LOGGED_IN_USER");
      %>
      
      Welcome <%=user.getAdhaarName() %>!!!
      
       <div class = "container">
		      <fieldset>
			          <div class="row">
					     <form action = "profile.jsp" method="post">					  
                           <input type="submit" value="View Profile" class = "buttonalign1">
					     </form> 
					  </div>
                      <div class="row">
					     <form  action = "Cast" method="post">					  
                           <input type="submit" value="Proceed to Vote" class = "buttonalign2">
					     </form> 
					  </div>					
			  </fieldset>
	    </div>	


</body>
</html>