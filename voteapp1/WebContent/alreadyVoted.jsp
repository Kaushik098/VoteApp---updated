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
	
	.container {
           border-radius: 30px;
           background-color: #f2f2f2;
           padding: 30px;
		   margin-top:30px;
		   margin: 100px;
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
     
    <nav>
     <a href = "userHome.jsp" > Home | </a>
     <a href = "login.jsp" >Logout</a>
	 </nav>
	 
     <div class = "container">
        <p> Sorry!!! Already you have been voted. Only once vote will be updated for an user </p>
    </div>   
     
</body>

</html>