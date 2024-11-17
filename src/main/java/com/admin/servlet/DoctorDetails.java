package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;
@WebServlet("/doctordetails")
public class DoctorDetails extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String name=req.getParameter("docname");
		String dob=req.getParameter("dob");
		String qualification=req.getParameter("quali");
		String specialist=req.getParameter("spec");
		String email=req.getParameter("email");
		String mobno=req.getParameter("number");
		String password=req.getParameter("Password");
		
		Doctor d=new Doctor(name,dob,qualification,specialist,email,mobno,password);
		DoctorDao dao=new DoctorDao(DBConnect.getConn());
		
		HttpSession session=req.getSession();
		
		if(dao.registerDoctor(d))
		{
			session.setAttribute("succcMSG","Doctor Added Succesfuly");
			resp.sendRedirect("admin/doctor.jsp");
		}
		else
		{
			session.setAttribute("errorMSG","Something wrong on server");
			resp.sendRedirect("admin/doctor.jsp");
		}
	}
	
}
