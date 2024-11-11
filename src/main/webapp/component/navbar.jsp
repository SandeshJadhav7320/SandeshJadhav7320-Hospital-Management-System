<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>


<nav class="navbar navbar-expand-lg navbar-dark bg-success text-white">
  <a class="navbar-brand" href="index.jsp"></i>Medi Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ms-auto">
    
    <c:if test="${empty userObj}">
    
	    <li class="nav-item active">
	        <a class="nav-link" href="admin_login_page.jsp">Admin <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="Doctor_Login_page.jsp">Doctor</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="appointement.jsp">Appointment</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="user_login_page.jsp">User</a>
	      </li>
    </c:if>
    
      
      
      <c:if test="${not empty userObj}">
      	 <li class="nav-item">
        <a class="nav-link" href="appointement.jsp">Appointment</a>
      </li>
      
       <li class="nav-item">
        <a class="nav-link" href="appointement.jsp">View Appointment</a>
      </li>
      
		<div class="dropdown">
	  		<button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
	    	<i class="fa-solid fa-circle-user"></i>${userObj.name}
	  		</button>
	  	
	 	 	<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
	 	 	
		    	<li><a class="dropdown-item" href="#">Change Password</a></li>
		    	<li><a class="dropdown-item" href="userlogout">Logout</a></li>
	    	
	  		</ul>
		</div>
      </c:if>
      
    </ul>
  </div>
</nav>