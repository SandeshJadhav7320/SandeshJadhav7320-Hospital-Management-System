<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/all_css.jsp" %>
<%@include file="component/navbar.jsp" %>

<style type="text/css">
.paint-card{
	box-shadow:0 0 20px 0 rgba(0,0,0,0.8);
}
</style>
</head>
<body>

<div class="container p-5">
	<div classs="row">
		<div class="col-md-4 offset-md-4">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-4 text-center"> User Register </p>
					
					<c:if test="${not empty succcMSG }"> 
						<p class="text-center text-success fs-3">${succcMSG}</p>
						<c:remove var="succcMSG" scope="session"/>
					</c:if>
					
					<c:if test="${not empty errorMSG }"> 
						<p class="text-center text-danger fs-3">${errorMSG}</p>
						<c:remove var="errorMSG" scope="session"/>
					</c:if>
					
					<form action="user_register" method="post">
						<div class="md-3">
							<label class="form-label">Name</label>
							<input type="text" name="name" class="form-control" required>
						</div>
						
						<div class="md-3">
							<label class="form-label">Email Address</label>
							<input type="email" name="email" class="form-control" required>
						</div>
						
						<div class="md-3">
							<label class="form-label">Password</label>
							<input type="password" name="password" class="form-control" required>
						</div>
						<br>
						<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


</body>
</html>