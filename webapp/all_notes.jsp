
<%@page import="org.viren.dto.Note"%>
<%@page import="javax.persistence.Query"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="org.viren.dao.Notes_Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Notes:Note Taker</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container">
    <%@include file="navbar.jsp" %>
<br>
<h3 class="text-uppercase">All Notes</h3>

<div class="row">
<div class="col-12">
<% 
EntityManagerFactory factory=Persistence.createEntityManagerFactory("Drav");
EntityManager manager=factory.createEntityManager();
EntityTransaction transaction=manager.getTransaction(); 

Query query=manager.createQuery("Select n from Note n");
List<Note> n=query.getResultList();
for(Note note:n)
{
%>
<div style="background: #ccffff" class="card mt-2 b-2" >
   <img class="card-img-top" style="max-width: 70px;" src="Images/contract.png" alt="...">
    <div class="card-body px-5" >
         <h5 class="card-title"><%=note.getTitle() %></h5>
         <p class="card-text">
         <%= note.getContent() %></p>
         <div class="cantainer text-center">
             <a href="DeleteServlet?note_id=<%= note.getId() %>" style="background: #e60000;
             border-color: white;"
             class="btn btn-danger">Delete</a>
             <a href="update.jsp?note_id=<%= note.getId() %>" style="background: #339966;
             border-color: white; padding-right:20px; padding-left: 20px;" 
             class="btn btn-primary">Update</a>
         </div>
        
    </div>
</div>
<% 
	/* out.println(note.getId()+":"+note.getTitle() +"<br>"); */	
}
%>


</div>

</div>


</div>
</body>
</html>