<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title> Admin Home Page </title>
   
   <style>
         h2{
		     text-align: center;
		     font-style: italic;
		 }
		 
		  body {
             border: 2px solid black;
             outline: #4CAF50 solid 10px;
             margin: auto; 
             margin-top: 30px;  
             padding: 20px;
			 padding-bottom: 60px;
         }
		 
		 .btn-group button {
            background-color: #4CAF50; /* Green background */
            border: 1px solid green; /* Green border */
            color: white; /* White text */
            padding: 10px 24px; /* Some padding */
            cursor: pointer; /* Pointer/hand icon */
            float: left; /* Float the buttons side by side */
			margin-left:30px;
         }
		 
		 .btn-group:after {
             content: "";
             clear: both;
             display: table;
          }
		  
            /* Add a background color on hover */
         .btn-group button:hover {
             background-color: #3e8e41;
           }
		   
		   .container {
              border-radius: 30px;
              background-color: #f2f2f2;
              padding: 20px;
	          margin-left:150px;
	          margin-right:150px;
	          margin-top:80px;
            }

        nav{
           float: right;
        }      
  
</style>

</head>


<body>
     
     
    <h2>  Welcome to VoteApp Admin Page </h2>
	 
    <nav>
        <a href = "login.jsp"> Logout </a>
    </nav>
	 
	 <div class = "container">
	   <div class="btn-group" style="width:100%">
	        <form action = "addCandidate.jsp">
              <button> Add Candidate </button> <br> <br>
            </form> 
            <form action = "deleteCandidate.jsp">
              <button> Delete Candidate </button> <br> <br>
            </form>  
            <form action = "Results" method = "get">
               <button> View Poll Results</button> <br> <br>
            </form>
            <form action = "individual.jsp">
               <button> Individual Candidate Result </button> <br> <br> 
            </form>
            <form>
                 <button> Reports </button> <br> <br>
            </form>  
       </div>
	 </div>
     


</body>

</html>