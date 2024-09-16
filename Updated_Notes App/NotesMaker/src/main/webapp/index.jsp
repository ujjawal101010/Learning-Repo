<!doctype html>
<%@page import="javax.websocket.SendResult"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Note Maker : Home Page</title>
    
    <%@include file="all_js_css.jsp"%>
    
    <style>
      body {
        background-image: url('img/boy.png');
        background-size: 100% 100%;
        background-repeat: no-repeat;
        background-attachment: fixed;
      }
      
      /* Make all content transparent except background image */
      .container-fluid {
        background-color: rgba(255, 255, 255, 0); /* White with 50% transparency */
        padding: 0;
        margin: 0;
      }

      .card {
        background-color: rgba(255, 255, 255, 0); /* White with 30% transparency */
      }

      h1, a {
        opacity: 0.9; /* Slightly less transparent for text and buttons */
      }
    </style>
  </head>
  <body>
    <div class="container-fluid py-0">
      <%-- <%@include file="navbar.jsp"%> --%>
      <br>

      <div class="card py-2 ">
        <img alt="" class="img-fluid mx-auto" style="max-width:350px;" src="img/note.png">
        <h1 class="text-primary text-uppercase text-center mt-3">Start Taking Your Notes</h1>

        <div class="container text-center">
          <%-- <button class="btn btn-outline-primary">Start Here</button> --%>
          <a href="add_notes.jsp" class="btn btn-primary">Start</a> 
        </div>
      </div>
    </div>
  </body>
</html>
