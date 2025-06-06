<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/all_css.jsp" %>

<style type="text/css">
.paint-card{
	box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}
</style>

</head>
<body>

<%@ include file="navbar.jsp" %>

	<c:if test="${empty adminObj}"> 
	<c:redirect url="../admin_login_page.jsp"></c:redirect>>
	</c:if>
	
	<div class="container p-5">
	<p class="text-center fs-3"> Admin Dashboard</p>
	<c:if test="${not empty succcMSG }"> 
		<p class="fs-3 text-center text-success " role="alert">${succcMSG}</p>
		<c:remove var="succcMSG" scope="session"/>
	</c:if>
					
	<c:if test="${not empty errorMSG }"> 
		<p class="text-center text-danger fs-3">${errorMSG}</p>
		<c:remove var="errorMSG" scope="session"/>
	</c:if>
	
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">Doctor<br>5</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">User<br>43
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">Total Appointment<br>543
						</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4 mt-5">
				<div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">Specialist<br>15
						</p>
					</div>
				</div>
			</div>
			
			
		</div>
	</div>
	
	
	<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="../addspecialist" method="post">
        	<div class="form-group">
        		<label>Enter Specialist Name :</label>
        		<input type="text" name="specname" class="form-control">
        	</div>
        	
        	<div class="text-center mt-3">
        		<button type="submit" class="btn btn-primary">Add</button>
        	</div>
        	
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>