<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login</title>
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
					<p class="fs-4 text-center"> Doctor Login </p>
					<form action="doclogin" method="post">
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>