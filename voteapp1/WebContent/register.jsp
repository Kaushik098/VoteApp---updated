<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
      
      p{
        font-style: bold;
      }
      
      h1{
		    font-style: italic;
		    text-align: center;
		 }
		.container {
           border-radius: 30px;
           background-color: #f2f2f2;
           padding: 30px;
        }
        .col-25 {
             float: left;
             width: 25%;
             margin-top: 10px;
			 margin-left: 20px;
        }

        .col-75 {
              float: left;
              width: 200%;
              margin-top: 6px;
			  margin-left:20px;
        }
	
	   input[type=submit] {
           background-color: #4CAF50;
           color: white;
           padding: 12px 20px;
           border: none;
           border-radius: 4px;
           cursor: pointer;
           float: right;
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
   
<h1> Register to Vote Candidate </h1>

  <div class = "container">
         <p>Note: <br> 
         <ol>
             <li> Please enter 12 digit adhaar card number as given in adhaar card </li>
             <li> Only 18+ age people can register and vote</li>
			 <li> Please check whether you enter a password with atleast 8 characters with atleast 1 number </li>
			 <li> Please enter a valid mobile number with 10 digits exactly</li>
         </ol>  
        </p>
        
<% 
String msg = (String)request.getAttribute("STATUS_ERROR");
if ( msg != null){ %>
	<font color='red'><%=msg %></font>
<%}%>
      
	     <form action = "Register" method = "post">
		      <fieldset>
			      <legend> Register : </legend>
				    <div class = "row">
				      
					  <div class = "col-25">
					     <label for="name"> Enter your name as named in Adhaar Card </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "text" name = "AdhaarName" placeholder = "Your Name...">
                      </div>
					  
                    </div>

                    <div class = "row">
				    
					  <div class = "col-25">
					     <label for="adhaarnum"> Adhaar Card Number </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "number" name = "AdhaarNumber" placeholder = "Your Adhaar Number...">
                      </div>
					  
                    </div>	

                    <div class = "row">
				    
					  <div class = "col-25">
					     <label for="date_of_birth"> Date Of Birth </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "date" name = "DateOfBirth" placeholder = "Your DOB...">
                      </div>
					  
                    </div>						
					
					 <div class = "row">
				    
					  <div class = "col-25">
					     <label for="u-name"> Username </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "text"  name = "username" placeholder = "Your EmailId...">
                      </div>
					  
                    </div>	
					
					 <div class = "row">
				      
					  <div class = "col-25">
					     <label for="pwd"> Password </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "text" name = "password" placeholder = "Your Password...">
                      </div>
					  
                    </div>	
					
					<div class = "row">
				      
					  <div class = "col-25">
					     <label for="mob_number"> Mobile Number </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "number" name = "mobilenumber" placeholder = "Your Mobile Number...">
                      </div>
					  
                    </div>
                    
				      
			         <div class="row">
					        <div class="col-25">
							       <label for="gender"> Gender </label>
							</div>
                            <div class="col-75">							
			                        <form class = "gen">
                                         <input type="radio" name="gender" value="male"> Male<br>
                                         <input type="radio" name="gender" value="female"> Female<br>
                                         <input type="radio" name="gender" value="other"> Other<br>  
                                     </form>
					        </div>
					    </div>
                   
                      <div class="row">
                           <input type="submit" value="Submit">
                      </div> 			
                      		  	  
			  </fieldset>
		 </form>
	</div>
   

</body>

</html>