<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes: Note Maker</title>
 <%@include file="all_js_css.jsp"%>
     <style>
      body {
        background-image: url('img/boy.png');
        background-size: 100% 100%;
        background-repeat: no-repeat;
        background-attachment: fixed;
      }
    </style>
</head>
<body>
<div class="container-fluid">
<%@include file="navbar.jsp"%>
<br>
<h1 class="text-uppercase">All Notes:</h1>

<!-- Search Form -->
<form action="all_notes.jsp" method="get" class="form-inline mb-4">
    <input type="text" name="search" class="form-control mr-2" placeholder="Search by title" value="<%= request.getParameter("search") %>">
    <button type="submit" class="btn btn-primary">Search</button>
</form>

<div class="row">
    <div class="col-12">
        <%
        String searchTerm = request.getParameter("search");
        Session s = FactoryProvider.getFactory().openSession();

        // Adjust the query based on the search term
        String hql = "from Note";
        if (searchTerm != null && !searchTerm.trim().isEmpty()) {
            hql += " where title like :searchTerm";
        }
        Query q = s.createQuery(hql);

        // Set the search parameter if applicable
        if (searchTerm != null && !searchTerm.trim().isEmpty()) {
            q.setParameter("searchTerm", "%" + searchTerm + "%");
        }

        List<Note> list = q.list();

        for (Note note : list) {
        %>
        <div class="card mt-3">
            <img class="card-img-top m-3 pt-2 mb-0 mx-auto" style="max-height:80px; max-width:80px" src="img/note.png" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title text-center"><%= note.getTitle() %></h5>
                <p class="card-text"><%= note.getContent() %>.</p>
                <p><b class="text-primary"><%= note.getAddedDate().toLocaleString() %></b></p>
                <div class="container text-center mt-2">
                    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
                    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
                </div>
            </div>
        </div>
        <%
        }
        s.close();
        %>
    </div>
</div>

</div>
</body>
</html>
