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
 * Servlet implementation class RegistrationAction
 */
@WebServlet(name = "registrationaction", urlPatterns = { "/registrationaction" })
public class RegistrationAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationAction() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("username");
		String password=request.getParameter("password");
		
		String dbEmail="";
		String dbPassword="";
		
		Connection con=DBConnection.getMySqlConnection();
		String sql="select * from nixinninsight where email=? and password=?";
		
		try {
		
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
				dbEmail=rs.getString(2);
				dbPassword=rs.getString(3);
				
			}
			
			if(dbEmail.equals(email)&&dbPassword.equals(password))
			{
				response.sendRedirect("registration.html");
			}
			
			else
			{
				
				
				out.println("<font color =#e84327><h2 style=\"text-align: center; margin-top: 12%; margin-left: 22%;\"> Invalid  Username  or  Password</h2></font>");
				RequestDispatcher rd=request.getRequestDispatcher("login.html");
				rd.include(request,response);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

			
	}

}
