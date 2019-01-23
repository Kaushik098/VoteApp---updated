<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="com.kaushik.voteapp.model.Candidate"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Vote Page </title>

<style>
        nav{
            float: right; 
        }
        h2{
		     text-align: center;
			 font-style: italic;
         }    

         .container {
           border-radius: 30px;
           background-color: #f2f2f2;
           padding: 30px;
		   margin: 40px;
		   margin-left: 200px;
		   margin-right: 200px;
        }

        .list{
		    font-style: italic;
			padding: 20px;
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
        
        nav{
          float: right;
        }
</style>
	
</head>

<body>
   
   <%
    List<Candidate> al = (List<Candidate>)session.getAttribute("ALL"); 
    Set<String> set = new LinkedHashSet<>();
    String name = "";
    String note = "";
    char a = 'A';
    for(Candidate c : al){
  	 name = c.getCategory().getName();
  	 set.add(name);
   }
   %>
     
     <h2> Vote Your Candidate </h2> 
     
     <nav>
     <a href = "userHome.jsp"> Home |</a>
     <a href = "login.jsp" >Logout</a>
	 </nav>
	 
      
      <div class = "container">
		      <fieldset>
			       <legend> Vote your favorite players: </legend>
			       <form action = "Vote" method="post">
			         
				    <div class = "list"> 
				    <% for(String s : set) { %>
				        <h3> <%=s %> </h3>
				        <% name = s;
				        note = Character.toString(a);
				       // out.println(note);
				       // System.out.println(note);
				        for(Candidate list1: al){
				            if(list1.getCategory().getName().equals(name)) {%>
                             <input type ="radio" name = <%=note %>  value = <%= list1.getCandidateId() %> > <%= list1.getCandidateName() %> <br> <br>	
                    <% } } a++; %> <br> <br> <br> <% } %>
                   
				   </div>
				   <div class="row">
                           <input type="submit" name ="result" value="Submit" >
                   </div>
                   </form>
			  </fieldset>
     </div>
      
</body>

</html>