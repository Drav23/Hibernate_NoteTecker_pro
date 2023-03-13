<%@page import="org.viren.dao.Notes_Dao"%>
<%@page import="org.viren.dto.Note"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="cantainer">
    <%@include file="navbar.jsp" %>
    
    <h1>Update Page</h1>
    <% 
    int noteId =Integer.parseInt(request.getParameter("note_id").trim());
    EntityManagerFactory factory=Persistence.createEntityManagerFactory("Drav");
    EntityManager manager=factory.createEntityManager();
    EntityTransaction transaction=manager.getTransaction();
    Note note=manager.find(Note.class, noteId);
    %>
    
    <form action="UpdateServlet" method="post">
    <input value="<%=note.getId()%>" name="noteId" type="hidden"/>
  <div class="form-group">
    <label for="title" >Note Title</label>
    <input 
    name="title"
    required type="text" class="form-control" 
    id="title" aria-describedby="emailHelp"
    value="<%=note.getTitle()%>"
    placeholder="Enter here"
    
    
    />
   <br>
  </div>
  <div class="form-group">
    <label for="content" >Note Content</label>
    <textarea name="content" required
    id="content" 
    placeholder="Enter content"
    class="form-control" 
    style="height: 300px"><%=note.getContent()%>
    </textarea>
  </div>
  <div class="container text-center">
  <!--<button type="submit" class="btn btn-primary" <a href='all_notes.jsp'>Add</a>></button> -->
  <button type="submit" class="btn btn-success">Save Update</button> 
  </div>
  
</form>
    </div>
</body>
</html>