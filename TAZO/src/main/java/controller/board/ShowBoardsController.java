package controller.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.driver.DriverSessionUtils;
import model.BoardDTO;
import model.CommentDTO;
import model.ReservationDTO;
import model.service.BoardManager;

public class ShowBoardsController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(request.getParameter("driverId"));
		int id = Integer.parseInt(request.getParameter("driverId"));
	
		//내가 등록한 보드 페이지들 보여주기
		BoardManager boardMan = BoardManager.getInstance();
		List<BoardDTO> list = boardMan.showMyBoardsByDriverId(id);
		
		HttpSession session = request.getSession();
        session.setAttribute("boardList", list);
        
        //나에게 요청을 보낸 사용자 리스트 보여주기
        List<ReservationDTO> requestList = boardMan.showCustomerRequest(id);
        session.setAttribute("requestList", requestList);
		request.setCharacterEncoding("utf-8");
		System.out.println(list);
		System.out.println("session : " + session.getAttribute("requestList"));
		return "/driver/myBoards.jsp";
	}

}
