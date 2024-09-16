<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>

<style>
  body {
    background-image: url('img/boy.png');
    background-size: 100% 100%; /* Ensures the background image covers the entire page */
    background-repeat: no-repeat;
    background-attachment: fixed;
    color: #ffffff; /* Set text color to white for better contrast */
  }

  .form-container {
    background-color: rgba(211, 211, 211, 0.8); /* Light grey with slight transparency */
    padding: 30px;
    border-radius: 20px; /* Increased border-radius for more rounded corners */
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
    margin-top: 0px;
  }

  h1 {
    text-align: center;
    margin-bottom: 30px;
    font-size: 2.5rem;
    font-weight: 700;
    text-transform: uppercase;
  }

  .form-control {
    background-color: rgba(255, 255, 255, 0.8);
    border: none;
    border-radius: 5px;
  }

  .btn-primary {
    background-color: #0069d9;
    border-color: #0062cc;
    padding: 10px 20px;
    font-size: 1.2rem;
    border-radius: 5px;
  }

  .btn-primary:hover {
    background-color: #0056b3;
    border-color: #004085;
  }
  
   input[type="submit"]{
   background-color: #007bff; 
                  color: white; 
                  border-radius: 8px; 
                  margin-right: 30px;
                  padding: 8px 15px; 
                  border: none; 
                  cursor: pointer; 
                  transition: background-color 0.3s ease;
                  
   }
    input[type="submit"]:hover {
        background-color: #5a9bff;
        
    }
  
</style>
</head>

<body>

<div class="container-fluid p-0 m-0">
  <%-- <%@include file="navbar.jsp"%> --%>
</div>

<div class="container d-flex justify-content-center">
  <div class="form-container col-md-6">
  
  <form action="LogoutServlet" method="post" style="margin-left: 570px; margin-top: 0px; padding-top: 2px; ">
            <input type="submit" value="Logout">
            
            
        </form>
    <h1>Please Fill Your Note Detail</h1>
    
     
    <form action="SaveNoteServlet" method="post">
      <!-- Note Title -->
      <div class="form-group">
        <label for="title">Note Title</label>
        <input
          name="title"
          required type="text"
          class="form-control"
          id="title"
          aria-describedby="titleHelp"
          placeholder="Enter here" />
      </div>
      <br>
      <!-- Note Content -->
      <div class="form-group">
        <label for="content">Note Content</label>
        <textarea
          name="content"
          required id="content"
          placeholder="Enter your content here"
          class="form-control"
          style="height: 200px"></textarea>
      </div>
      <br>
      <!-- Submit Button -->
      <div class="text-center mt-1">
        <button type="submit" class="btn btn-primary "style="padding-top: 3px; padding-bottom: 3px;">Add</button>
      </div>
    </form>
  </div>
</div>

</body>
</html>
