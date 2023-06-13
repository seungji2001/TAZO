package controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import model.ReservationDTO;
import model.service.BoardManager;
import model.service.ReservationManager;

public class AllowRequestController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(request.getParameter("customerStrId"));
		String customerStrId = request.getParameter("customerStrId");
		//customerStrId가 요청한 
		System.out.println(request.getParameter("reservationId"));
		int reservationId = Integer.parseInt(request.getParameter("reservationId"));
		

		  BoardManager manager = BoardManager.getInstance();
		  manager.allowCustomerRequest(reservationId);
		  
		//매니저에서 두개에 해당되는 reservation 구하기
		return "/index.jsp";
	}

}
