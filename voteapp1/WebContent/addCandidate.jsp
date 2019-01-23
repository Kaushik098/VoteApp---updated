<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title> Add New Candidate </title>
   <style>
   
     nav{
	   float:right;
	 }
      h2{
	     text-align: center;
		 font-style: italic;
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
      <h2>  Add Candidate Details </h2>
  
  <nav>
     <a href = "adminHome.jsp"> Home |</a>
     <a href = "login.jsp" >Logout</a>
	 </nav>
    
  <div class = "container">
	     <form action = "AddCandidate" method = "post">
		      <fieldset>
			      <legend> Details : </legend>
				    <div class = "row">
				      
					  <div class = "col-25">
					     <label for="cand_id"> CandidateId </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "text" name = "cID" placeholder = "Four Digit ID...">
                      </div>
					  
                    </div>

                    <div class = "row">
				    
					  <div class = "col-25">
					     <label for="cand_name"> Candidate Name </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "text" name = "cN" placeholder = "Name of Candidate...">
                      </div>
					  
                    </div>	
					
					<div class = "row">
				    
					  <div class = "col-25">
					     <label for="cand_name"> Category Id </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "text" name = "v_catId" placeholder = "Category Id...">
                      </div>
					  
                    </div>
					
					<div class = "row">
				    
					  <div class = "col-25">
					     <label for="cand_name"> Category Name </label>
					  </div>
					  
                      <div class="col-75">
                          <input type = "text" name = "v_catN" placeholder = "Category Name...">
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