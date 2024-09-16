<nav class="navbar navbar-expand-lg navbar-dark navcolor">

  <%@include file="all_js_css.jsp"%>

  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">Note Maker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="add_notes.jsp">Add Note</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="all_notes.jsp" tabindex="-1" aria-disabled="true">Show Notes</a>
        </li>
         <form action="LogoutServlet" method="post" style="margin-left: 600px; padding-top: 5px; ">
            <input type="submit" value="Logout"
            
             style="background-color: #007bff; 
                  color: white; 
                  border-radius: 8px; 
                  padding: 8px 15px; 
                  border: none; 
                  cursor: pointer; 
                  transition: background-color 0.3s ease;"
                  onmouseover="this.style.backgroundColor='#5a9bff';"
                  onmouseout="this.style.backgroundColor='#007bff';"
                  >
            
            
        </form>
      </ul>
     
    </div>
  </div>
</nav>

<style>
  /* Hover effect for navbar links */
  .nav-link:hover {
    background-color: rgba(255, 255, 255, 0.4); /* Light background on hover */
    border-radius: 8px; /* Optional: Rounded corners */
    color: #fff; /* Ensure the text color remains white */
  }
  
  /* Optional: Hover effect for the search button */
  .btn-outline-light:hover {
    background-color: #fff; /* Change background to white on hover */
    color: #000; /* Change text color to black on hover */
  }
 

  
</style>
