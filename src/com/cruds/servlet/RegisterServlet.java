package com.cruds.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cruds.entity.Consumer;
import com.cruds.exception.WebException;
import com.cruds.service.WebService;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name="",phNo="",eMail="",uName = "",password="";
		try{
			name = (String)request.getParameter("name");
			phNo = (String)request.getParameter("phNo");
			eMail = (String)request.getParameter("eMail");
			uName = (String)request.getParameter("uName");
			password = (String)request.getParameter("password");
			if(name.equals("") || phNo.equals("") || eMail.equals("") ||uName.equals("") || password.equals(""))
			{
				throw  new WebException("Input cannot be void, enter something");
			}
			System.out.println(uName);
			WebService.register(new Consumer(uName, password, name, phNo, eMail));
			
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		catch(WebException e)
		{
			e.getDetails();
		}
		
	}

}
