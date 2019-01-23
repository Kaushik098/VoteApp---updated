<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
     h1{
	     font-style: italic;
		 text-align: center;
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
     float: left;
     width: 200%;
     margin-top: 6px;
    }
	
	input[type=submit] {
      background-color: #4CAF50;
      color: white;
      padding: 12px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      float: right;
	  margin-top: 10px;
    }
	
	  body {
        border: 2px solid black;
        outline: #4CAF50 solid 10px;
        margin: auto; 
        margin-top: 30px;  
        padding: 20px;
     }

</style>
</head>

<body>

<%
String msg = (String)request.getAttribute("ERROR_MSG");
if ( msg != null){
	out.print(msg);
}

if ( msg!=null){%>

<font color='red'><%=msg %></font>

<%} %>   


<h1> Login to Vote Candidate  </h1>


    <div class = "container">
	     <form action="Login" method="post">
		      <fieldset>
			      <legend> Login : </legend>
				    <div class = "row">
				      
					  <div class = "col-25">
					     <label for="u_name"> Username </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "text" name = "name" placeholder = "Your Name...">
                      </div>
                    </div>

                    <div class = "row">
				      
					  <div class = "col-25">
					     <label for="pwd"> Password </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "text"  name = "pwd" placeholder = "Your Password..">
                      </div>
                    </div>		

				
                      <div class="row">
                           <input type="submit" value="Submit" name = "Submit"> 
					  </div>					
			  </fieldset>
		 </form>
	</div>
	
</body>

</html>