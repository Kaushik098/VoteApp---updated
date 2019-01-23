<%@page import="com.kaushik.voteapp.model.User"%>
<%@page import="java.util.List"%>
<%@page import="com.kaushik.voteapp.model.Candidate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
     }
	 
	 .container {
       border-radius: 30px;
       background-color: #f2f2f2;
       padding: 20px;
	   margin-left:300px;
	   margin-right:300px;
	   margin-top:80px;
    }
	
	 .col-25 {
     float: left;
     width: 25%;
     margin-top: 10px;
    }

   .col-75 {
     margin-left : 300px;
     width: 100%;
     margin-top: 10px;
    }

</style>

</head>


<body>

     <h2>   Profile  </h2>
      
      <%
       User user = (User)session.getAttribute("LOGGED_IN_USER");
      %>
            
        <nav>
	      <a href = "userHome.jsp"> Home |</a>
	      <a href = "login.jsp" >Logout</a>
	    </nav>
               
                  <form method="post">   
                     <div class = container>				 
						       <div class="row">
                                            <div class="col-25">
                                                <label style="font-weight:bold;">User ID</label>
                                            </div>
                                            <div class="col-75">
                                                <%= user.getUserId() %>
                                            </div>
                                        </div>
                                <hr/>        
										
                          	    <div class="row">
                                            <div class="col-25">
                                                <label style="font-weight:bold;">Full Name</label>
                                            </div>
                                            <div class="col-75">
                                                <%= user.getAdhaarName() %>
                                            </div>
                                        </div>
                                 <hr/>       

                                        <div class="row">
                                            <div class="col-25">
                                                <label style="font-weight:bold;">AdhaarCard Number</label>
                                            </div>
                                            <div class="col-75">
                                                <%= user.getAdhaarNumber() %>
                                            </div>
                                        </div>
                                        <hr />
                                        
                                        
                                        <div class="row">
                                            <div class="col-25">
                                                <label style="font-weight:bold;"> Date of Birth</label>
                                            </div>
                                            <div class="col-75">
                                               <%= user.getDob() %>
                                            </div>
                                        </div>
                                        <hr />
                                        
                                        <div class="row">
                                            <div class="col-25">
                                                <label style="font-weight:bold;"> Username </label>
                                            </div>
                                            <div class="col-75">
                                                <%= user.getUsername() %>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-25">
                                                <label style="font-weight:bold;">Mobile Number</label>
                                            </div>
                                            <div class="col-75">
                                                <%= user.getMobileNumber() %>
                                            </div>
                                        </div>
                                        <hr />
										<div class="row">
                                            <div class="col-25">
                                                <label style="font-weight:bold;">Gender</label>
                                            </div>
                                            <div class="col-75">
                                                <%= user.getGender() %>
                                            </div>
                                        </div>
                                        <hr />
										<div class="row">
                                            <div class="col-25">
                                                <label style="font-weight:bold;">Role</label>
                                            </div>
                                            <div class="col-75">
                                                <%= user.getRole() %>
                                            </div>
                                        </div>
                                        <hr />
                             
	                         </div>   
                      </form>
</body>

</html>