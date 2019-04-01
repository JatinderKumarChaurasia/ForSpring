package com.cognizant.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.bean.Mechanic;
import com.cognizant.services.MechanicService;
import com.cognizant.services.MechanicServiceImpl;

/**
 * Servlet implementation class MechanicServlet
 */
public class MechanicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MechanicServlet() {
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
		super.doPost(request, response);
		System.out.println("Creating Servlet");

		RequestDispatcher requestDispatcher;
		int userId = Integer.parseInt(request.getParameter("mechanicUserId"));
		String mechanicName = request.getParameter("mechanicName");
		String gender = request.getParameter("mechanicGender");
		int mZender;
		if(gender.equals("0")){
			mZender =0;
		}else{
			mZender = 1;
		}
		double latitude = Double.parseDouble(request.getParameter("mechanicLocateLatitude"));
		double longitude = Double.parseDouble(request.getParameter("mechanicLocateLongitude"));
		String mechanicEmailId = request.getParameter("mechanicEmailId");
		long mechanicContactNo = Long.parseLong(request.getParameter("mechanicContactNo"));
		String mechanicPassword = request.getParameter("mechanicPassword");
        Date DateOfBirth = null;
		
		Mechanic mechanic = new Mechanic(userId, mechanicName, mechanicPassword, mZender, mechanicContactNo,
				mechanicEmailId, DateOfBirth, latitude, longitude);
		System.out.println(mechanic.toString());
		MechanicService mechanicService = MechanicServiceImpl.getInstance();
		String result = mechanicService.addNewMechanicSignUp(mechanic);
		if (result.equals("success")) {
			requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request, response);
			System.out.println("Mechanic is Added in the database Successfully");
		} else {
			requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request, response);
			System.out.println("Error Accounted while creating new Mechanic");
		}
	}

}
