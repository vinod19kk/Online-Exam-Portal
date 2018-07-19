package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DBConnection;

/**
 * Servlet implementation class RegistraionDetails
 */
@WebServlet("/registraiondetails")
public class RegistraionDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistraionDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String dob=request.getParameter("dob");
		String email=request.getParameter("email");
		long contact=Long.parseLong(request.getParameter("contact"));
		String nameofdegree=request.getParameter("nameofdegree");
		String branch=request.getParameter("branch");
		int per=Integer.parseInt(request.getParameter("per"));
		int yop=Integer.parseInt(request.getParameter("yop"));
		
		Connection con=DBConnection.getMySqlConnection();
		String sql="insert into nixinninsight.studentdetails(First_Name,Last_Name,Date_Of_Birth,Email_id,Contact,Degree,Branch,Percentage,Passout) values(?,?,?,?,?,?,?,?,?)";
		
		String id="SELECT LAST_INSERT_ID()";
		
		try {
		
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1,firstname);
			ps.setString(2,lastname);
			ps.setString(3, dob);
			ps.setString(4, email);
			ps.setLong(5, contact);
			ps.setString(6,nameofdegree);
			ps.setString(7, branch);
			ps.setInt(8, per);
			ps.setInt(9, yop);
			ps.execute();
			
			PreparedStatement ps1=con.prepareStatement(id);
			ResultSet  rs = ps1.executeQuery();
			rs.next();
			HttpSession hs  = request.getSession();
			hs.setAttribute("id",rs.getString(1));
			
			response.sendRedirect("instructions.jsp");
			
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
