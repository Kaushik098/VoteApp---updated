<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.kaushik.voteapp.model.VoteSummary"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> VoteResult </title>

<style>
   
    nav{
       float: right;
    }
    h2{
	    font-style: italic;
		text-align: center;
	}
	
	.aligncenter{
	   text-align: center;
	   font-style:italic;
	   padding: 10px;
	}
	table, th, td {
	  margin-top: 30px;
      border: 1px solid black;
	  border-collapse: collapse;
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
      
      <h2> Candidate Vote Result </h2>
      
     <nav>
     <a href = "adminHome.jsp"> Home |</a>
     <a href = "login.jsp" >Logout</a>
	 </nav>
<%
List<VoteSummary> votes = (List<VoteSummary>)session.getAttribute("CANDIDATE_VOTES");
%>
  
   <div>
       <table style = "width:100%">	   
	   <tr>
	       <th>  id </th>
	       <th> Candidate </th>
		   <th> Batting    </th>
		   <th> Bowling   </th>
		   <th> WicketKeeper   </th>
		   <th> All Rounder  </th>
	   </tr> <br> <br>
	   
	    <%  
	    List<VoteSummary> list = new ArrayList<>();
	    for(VoteSummary vs: votes) { %>
	   <tr class = "aligncenter">
	        <td><%= vs.getCandidateId() %> </td>
	        <td><%= vs.getCandidateName() %> </td>
	        <td><%= vs.getBattingCount() %> </td>
	        <td><%= vs.getBowlingCount() %> </td>
	        <td><%= vs.getWicketKeeperCount() %>
	        <td><%= vs.getAllRounderCount() %> </td>
	   </tr>
	   <% }%>
	  </table>
   </div>
  
</body>
</html>