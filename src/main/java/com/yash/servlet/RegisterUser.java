package com.yash.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

/**
 * Servlet implementation class RegisterUser
 */
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String id,psw,nm,gender,mob;
		int age,acno;
		id=request.getParameter("uid");
		psw=request.getParameter("psw");
		acno=Integer.parseInt(request.getParameter("acno"));
		nm=request.getParameter("nm");
		gender=request.getParameter("gen");
		age=Integer.parseInt(request.getParameter("age"));
		mob=request.getParameter("mob");
	
		Connection con;
		PreparedStatement pst;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql:// bqpgwgr9a2z5wxnbvbe0-mysql.services.clever-cloud.com:3306/bqpgwgr9a2z5wxnbvbe0?user=uu49b3v04yy1ijpr&password=y8NAtwVHlnFZ0nROT5Qp");
             pst=con.prepareStatement("insert into user value(?,?,?,?,?,?,?)");
             pst.setString(1, id);
             pst.setString(2, psw);
             pst.setInt(3, acno);
             pst.setString(4, nm);
             pst.setString(5, gender);
             pst.setInt(6, age);
             pst.setString(7, mob);
             pst.executeUpdate()
;             out.println("<h3>REGISTETION DONE.....</h3>");
			con.close();
			out.println("<a href='index.jsp'>HOME</a>");
		}
		catch(Exception e) {
			out.println(e);
		}
	}

}
