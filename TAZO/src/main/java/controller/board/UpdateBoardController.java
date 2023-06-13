package controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import model.BoardDTO;
import model.BoardForUpdate;
import model.DriverDTO;
import model.ReservationDTO;
import model.service.BoardManager;

public class UpdateBoardController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("boardId" + request.getParameter("boardId"));
		System.out.println("arrival" + request.getParameter("arrival"));
		System.out.println("departure" + request.getParameter("departure"));
		System.out.println("arrivalTime" + request.getParameter("arrivalTime"));
		System.out.println("departureTime" + request.getParameter("departureTime"));
		System.out.println("headCount" + request.getParameter("headCount"));
		System.out.println("realtimeState" + request.getParameter("realtimeState"));
		BoardForUpdate board = new BoardForUpdate(
				Integer.parseInt(request.getParameter("boardId")),
				request.getParameter("arrival"),
				request.getParameter("departure"),
				request.getParameter("arrivalTime"),
				request.getParameter("departureTime"),
				Integer.parseInt(request.getParameter("headCount")),
				Integer.parseInt(request.getParameter("realtimeState"))
		);
		System.out.println(board);
	
		//내가 등록한 보드 페이지들 보여주기
		BoardManager boardMan = BoardManager.getInstance();
		boardMan.updateBoard(board);
		
		return "redirect:/driver";
	}

}
