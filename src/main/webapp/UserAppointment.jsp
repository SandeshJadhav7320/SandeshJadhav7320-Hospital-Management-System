<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>

<%@include file="component/all_css.jsp" %>
<%@include file="component/navbar.jsp" %>

<style type="text/css">
.paint-card{
	box-shadow:0 0 20px 0 rgba(0,0,0,0.8);
}
.backImg{
	background:Linear-gradient(rgba(0,0,0,.4),rgba(0,0,0,.4)),
	url("img/hospital.jpeg");
	height:20vh;
	width:100%;
	background-size:cover;
	background-repeat:no-repeat;
}

body{
	background-color: grey;
}
</style>
</head>
<body>
	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img alt="" src="img/doc1.jpeg">
			</div>
			
			<div class="col-md-6"> 
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3">User Appointment</p>
						
						<c:if test="${not empty succcMSG }"> 
						<p class="text-center text-success fs-3">${succcMSG}</p>
						<c:remove var="succcMSG" scope="session"/>
					</c:if>
					
					<c:if test="${not empty errorMSG }"> 
						<p class="text-center text-danger fs-3">${errorMSG}</p>
						<c:remove var="errorMSG" scope="session"/>
					</c:if>
					
					<form action="addAppointment" method="post" class="row g-3">
						<input type="hidden" name="userid" value="${userObj.id}">
						
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Full Name</label>
							<input type="text" name="fullname" class="form-control" required>
						</div>
						
						<div class="col-md-6">
							<label>Gender</label>
							<select class="form-control" name="gender" required>
								<option value="male">Male</option>
								<option value="female">Female</option>
							</select>
						</div>
						
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Age</label>
							<input type="number" name="age" class="form-control" required>
						</div>
						
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Appointment Date</label>
							<input type="date" name="appoint_date" class="form-control" required>
						</div>
						
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Email</label>
							<input type="email" name="email" class="form-control" required>
						</div>
						
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Phone Number</label>
							<input type="number" name="phno" class="form-control" maxlength="10" required>
						</div>
						
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Diseases</label>
							<input type="text" name="diseases" class="form-control" required>
						</div>
						
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Doctor</label>
							<select class="form-control" name="doct" required>
								<option value="">-----Select------</option>
								<%
									DoctorDao dao = new DoctorDao(DBConnect.getConn());
									List<Doctor> list=dao.getAllDoctor();
									
									for(Doctor d:list){
									%>
										<option value="<%=d.getId()%>"><%=d.getFullname() %>(<%=d.getSpecialist() %>)</option>
										
									<%}
								%>
								
							</select>
						</div>
						
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Full Address</label>
							<input type="text" name="address" class="form-control" required>
						</div>
						
						<c:if test="${empty userObj }"> 
							<a href="user_login_page.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							
						</c:if>
							
						<c:if test="${not empty userObj }"> 
							<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							
						</c:if>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>