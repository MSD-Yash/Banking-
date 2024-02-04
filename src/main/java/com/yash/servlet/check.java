package com.yash.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class check
 */
public class check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public check() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id,ps;
		id=request.getParameter("uid");
		ps=request.getParameter("psw");
		//System.out.println(id+""+ps);
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:// bqpgwgr9a2z5wxnbvbe0-mysql.services.clever-cloud.com:3306/bqpgwgr9a2z5wxnbvbe0?user=uu49b3v04yy1ijpr&password=y8NAtwVHlnFZ0nROT5Qp");
            pst=con.prepareStatement("select * from user where userid=? and password=?");
            
            
            pst.setString(2, ps);
            pst.setString(1, id);
            rs=pst.executeQuery();
            int ano;
            if(rs.next()) {
            //System.out.println("su");
            	ano=rs.getInt("accno");
				HttpSession ses=request.getSession(true);
				ses.setAttribute("userid", id);
				ses.setAttribute("accno", ano);
            	response.sendRedirect("home.jsp");
            }
            else {
            	//System.out.println("failed");
            	response.sendRedirect("fail.jsp");
            }
		}
		catch(Exception e) {
			
			
		}

	}

}
