package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DBConnection;

/**
 * Servlet implementation class Finish
 */
@WebServlet("/FinishExam")
public class FinishExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FinishExam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String score = request.getParameter("sum1");
		int x = Integer.parseInt(score);
		//System.out.println("Score "+x);
		Connection con=DBConnection.getMySqlConnection();
		
		HttpSession hs = request.getSession();
		String s = (String) hs.getAttribute("id");
		int y = Integer.parseInt(s);
		//System.out.println("Id " + y);
		
		String sql="update nixinninsight.studentdetails set Score=? where Id=?";
		
		try 
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,x);
			ps.setInt(2,y);
			ps.executeUpdate();
			
			response.sendRedirect("Finish.jsp");
			
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
