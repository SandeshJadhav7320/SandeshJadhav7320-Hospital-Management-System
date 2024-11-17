<%@page import="com.entity.SpecialistEntity"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dao.SpecialistDao"%>
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

<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-5 offset-md-4">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-3 text-center">Add Doctor</p>
					
					<c:if test="${not empty errorMSG }"> 
						<p class="fs-3 text-center text-success " role="alert">${errorMSG}</p>
						<c:remove var="succcMSG" scope="session"/>
					</c:if>
							
					<c:if test="${not empty  succcMSG}"> 
						<p class="text-center text-danger fs-3">${succcMSG}</p>
						<c:remove var="errorMSG" scope="session"/>
					</c:if>	
					
					<form action="../doctordetails" method="post">
						<div class="mb-3">
							<label class="form-label"  >Full Name</label>
							<input type="text" name="docname" class="form-control" required>
						</div>
						
						<div class="mb-3">
							<label class="form-label"  >DOB</label>
							<input type="date" name="dob" class="form-control" required>
						</div>
						
						<div class="mb-3">
							<label class="form-label" >Qualification</label>
							<input type="text" name="quali" class="form-control" required>
						</div>
						
						<div class="mb-3">
							<label class="form-label" >Specialist</label>
							<select name="spec" class="form-control" required>
								<option>---Select----</option>
								<%
								SpecialistDao dao=new SpecialistDao(DBConnect.getConn());
								List<SpecialistEntity> list=dao.getAllSpecialist();		
								for(SpecialistEntity s:list)
								{%>
								
									<option><%=s.getSpecname() %></option>
								<%}
								
								%>
								
							</select>
						</div>
						
						<div class="mb-3">
							<label class="form-label" >Email</label>
							<input type="email" name="email" class="form-control" required>
						</div>
						
						<div class="mb-3">
							<label class="form-label" >Mobile Number</label>
							<input type="text" name="number" class="form-control" required>
						</div>
						
						<div class="mb-3">
							<label class="form-label" >Password</label>
							<input type="Password" name="Password" class="form-control" required>
						</div>
						
						<div class="mb-3">
							<button type="submit" class="btn btn-primary col-md-12">Submit</button>
						</div>
						
					</form>	
				</div>
		</div>
		
		</div>
		
		

	</div>
	
</div>

</body>
</html>