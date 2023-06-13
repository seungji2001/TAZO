package controller.reservation;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import model.ReservationDTO;
import model.service.ReservationManager;

public class ListReservationController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int userId =1;
	    userId=1;
	  
	  ReservationManager manager = ReservationManager.getInstance();
	  HttpSession session = request.getSession();
	  List<ReservationDTO> WaitReservation = manager.selectWaitReservation(userId);
	  
	  List<ReservationDTO> ConfirmReservation = manager.selectConfirmReservation(userId);   
	  
	  request.setAttribute("ConfirmReservation", ConfirmReservation);
	  request.setAttribute("WaitReservation", WaitReservation);   
	  
	   return "/reservation/reservation.jsp";   
	}
	
}
