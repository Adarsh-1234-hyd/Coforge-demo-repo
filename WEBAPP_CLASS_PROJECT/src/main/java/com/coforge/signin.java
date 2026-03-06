package com.coforge;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class signin
 */
@WebServlet("/signin")
public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public signin() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String mobileno = request.getParameter("mobileno");
		String email = request.getParameter("email");
		RequestDispatcher rd = null;
		
//		out.println("welcome NEW USER  ---->"+uname);
//		out.close();
		
		if(!Userdb.userHashMap.containsKey(uname)  && !uname.isEmpty()&& !pwd.isEmpty()) {
			
			response.getWriter();
			Userdb.userHashMap.put(uname, email);
			request.setAttribute("name", uname);
			request.setAttribute("mobileno", mobileno);
			request.setAttribute("email", email);
			request.setAttribute("pwd", pwd);
			request.getRequestDispatcher("/welcome.jsp").forward(request, response);
			
		}
		
		else {
			rd = request.getRequestDispatcher("/error.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
