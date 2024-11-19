<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<nav class="navbar navbar-expand-lg navbar-dark bg-success text-white">
  <a class="navbar-brand" href="index.jsp"></i>Medi Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ms-auto">
      <li class="nav-item active">
        <a class="nav-link" href="admin_login_page.jsp">Home </a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link" href="Patient.jsp">Patient</a>
      </li>
     
    </ul>
    <form class="d-flex">
    <div class="dropdown">
	     <button class="btn btn-light dropdown-togggle" type="button" id="dropdownMenuButton1"
	      data-bs-toggle="dropdown" area-expanded="false">
	     <i class="fas fa-user-circle"></i> ${doctObj.fullname}    	
	     </button>
	     <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
	  		<li><a class="dropdown-item" href="profile.jsp">Edit Profile</a></li>
	  		<li><a class="dropdown-item" href="../doctorLogout">Logout</a></li>
		</ul>
	 
	 </div>
    </form>
    
  
  
 
</div>
</nav>
