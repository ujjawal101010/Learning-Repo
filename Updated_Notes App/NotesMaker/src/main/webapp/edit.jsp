<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<%@include file="all_js_css.jsp"%>
<style>
body {
    background-image: url('img/boy.png');
    background-size: 100% 100%;
    background-repeat: no-repeat;
    background-attachment: fixed;
    color: #ffffff; /* Set text color to white for better contrast */
  }

</style>
</head>
<body>
<div class="container-fluid p-0 m-0">
<%@include file="navbar.jsp"%>
<h1>Edit your Note</h1>
<br>
<%
int noteId = Integer.parseInt(request.getParameter("note_id").trim());
Session s = FactoryProvider.getFactory().openSession();
Note note =(Note) s.get(Note.class, noteId);

%>

<form action="UpdateServlet" method="post">
<!-- this is add form -->
<input value="<%= note.getId()%>" name="noteId" type="hidden" />

  <div class="form-group">
    <label for="title" >Note Title</label>
    <input 
    name="title"
    required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here"
    value="<%= note.getTitle() %>"
    />
    
    <br>
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea 
    name="content"
    required id="content" placeholder="Enter your content here"
    class="form-control"
    style="height: 200px"
    ><%= note.getContent() %>
    </textarea>
  </div>
  
  <div class="container text-center mt-1">
  <button type="submit" class="btn btn-success">Save Your Note</button>
  </div>
</form>

</div>

</body>
</html>