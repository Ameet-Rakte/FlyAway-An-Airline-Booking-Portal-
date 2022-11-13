package com.admin;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FlightsServ")
public class FlightsServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public FlightsServ() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<Flights> flightlist=FlightsDB.getFlightsList();
			request.setAttribute("flightlist", flightlist);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("show-flights.jsp");
		dispatcher.forward(request, response);
	}
}
