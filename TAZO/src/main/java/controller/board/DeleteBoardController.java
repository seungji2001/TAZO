package controller.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.service.BoardManager;

public class DeleteBoardController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("DeleteBoardController" + request.getParameter("boardId"));
	
		int boardId = Integer.parseInt(request.getParameter("boardId"));
//		int driverId = Integer.parseInt(request.getParameter("driverId"));
//		System.out.println("boardId : " + boardId + " driverId : " + driverId);
		BoardManager manager = BoardManager.getInstance();
		manager.deleteBoardByBoardId(boardId);
		return "redirect:/driver";
	}

}
