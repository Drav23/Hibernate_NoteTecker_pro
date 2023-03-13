<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes Here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="cantainer">
    <%@include file="navbar.jsp" %>
    <h3>Fill Your Note Details </h3>
    <br>
    <!-- This is add form -->
    <form action="SaveNoteServlet" method="post">
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input 
    name="title"
    required type="text" class="form-control" 
    id="title" aria-describedby="emailHelp"
    placeholder="Enter here" />
   
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
    <textarea 
    name="content"
    required
    id="content" 
    placeholder="Enter your content here"
    class="form-control" 
    style="height: 300px"></textarea>
  </div>
  <div class="container text-center">
  <!--<button type="submit" class="btn btn-primary" <a href='all_notes.jsp'>Add</a>></button> -->
  <button type="submit" class="btn btn-primary">Add</button> 
  </div>
  
</form>
    </div>
</body>
</html>