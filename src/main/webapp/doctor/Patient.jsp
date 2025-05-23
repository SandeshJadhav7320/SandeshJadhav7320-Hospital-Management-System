
<%@page import="com.entity.Appointment"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@ include file="../component/all_css.jsp" %>

<style type="text/css">
.paint-card{
	box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}
</style>

</head>
<body>
	
	<%@ include file="navbar.jsp" %>
	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card pint-card">
					<div class="card-body">
						<p class="fs-3  text-center text-success">Patient Details</p>
						
						<c:if test="${not empty succcMSG }"> 
						<p class="text-center text-success fs-3">${succcMSG}</p>
						<c:remove var="succcMSG" scope="session"/>
					</c:if>
					
					<c:if test="${not empty errorMSG }"> 
						<p class="text-center text-danger fs-3">${errorMSG}</p>
						<c:remove var="errorMSG" scope="session"/>
					</c:if>
					
					
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment  Date</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Diseases</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							
							<tbody>
							
								<%
									Doctor d=(Doctor)session.getAttribute("doctObj");
								AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
								List<Appointment> list=dao.getAllAppointmentByDoctorLogin(d.getId());
									for(Appointment ap:list)
									{%>
										<tr>
											<th> <%=ap.getFullName() %></th>
											<td> <%=ap.getGender() %></td>
											<td><%=ap.getAge()%></td>
											<td><%=ap.getAppoinDate() %></td>
											<td><%=ap.getEmail() %></td>
											<td><%=ap.getPhNo() %></td>
											<td><%=ap.getDiseases()%></td>
											<td><%=ap.getStatus() %></td>
											<td>
												<a href="#" class="btn btn-success btn-sm">Comment</a>
											</td>
										</tr>
									<%}
									%>
										
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
</body>
</html>