<%-- <%@page import="com.db.DBConnect" %> --%>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Managment</title>

<%@include file="component/all_css.jsp" %>	
<style type="text/css">
.paint-card{
	box-shadow:0 0 20px 0 rgba(0,0,0,0.8);
}
</style>
</head>
<body>

<%@include file="component/navbar.jsp" %>



<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/hos1.jpeg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos2.jpeg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos3.jpeg" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="container p-3">
	<p class="text-center fs-2">Key Features of our Hospital</p>
	<div class="row">
		<div class="col-md-8 p-7">
			<div class="row">
				<div class="col-md-6">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs7">100% Safety</p>
							<p>Lorem ipsum dolor sit amet, consecteture adpisicing elit,voluptatem,inventore</p>
						</div>
					</div>
				</div>
			
				<div class="col-md-6">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs7">Clean Environment</p>
							<p>Lorem ipsum dolor sit amet, consecteture adpisicing elit,voluptatem,inventore</p>
						</div>
					</div>
				</div>
			
				<div class="col-md-6">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs7">Friendly Doctor</p>
							<p>Lorem ipsum dolor sit amet, consecteture adpisicing elit,voluptatem,inventore</p>
						</div>
					</div>
				</div>
			
				<div class="col-md-6">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs7">Medical Reaserch</p>
							<p>Lorem ipsum dolor sit amet, consecteture adpisicing elit,voluptatem,inventore</p>
						</div>
					</div>
				</div>
			</div>
				
		</div>
			<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body">
					<img alt="" src="img/doc10.jpeg" height="300" width="380">	
				</div>
			</div>
		</div>
	</div>
</div>

<hr>

<div class="container p-2">
	<p class="text-center fs-2">Our Team </p>
	<div class="row">
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card-body text-center">
					<img alt="" src="img/doc8.jpeg" height="220" width="180">
						<p class="fs-5">Dr.Jhon Sing</p>
						<p class="fs-7">(CEO & Chairman)</p>	
				</div>
			</div>
		</div>
		
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card-body text-center">
					<img alt="" src="img/doc10.jpeg">
						<p class="fs-5">Dr.Ram Patil</p>
						<p class="fs-7">(Chief Doctor)</p>	
				</div>
			</div>
		</div>
		
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card-body text-center">
					<img alt="" src="img/doc1.jpeg">
						<p class="fs-5">Dr.Peter Sing</p>
						<p class="fs-7">(Chief Doctor)</p>	
				</div>
			</div>
		</div>
		
		<div class="col-md-3">
			<div class="card paint-card">
				<div class="card-body text-center">
					<img alt="" src="img/doc4.jpeg"  height="220" width="180">
						<p class="fs-5">Dr.Kirti Bhosale</p>
						<p class="fs-7">(Chief Doctor)</p>	
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="component/footer.jsp" %>
</body>
</html>