package controller;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.user.*;
import controller.board.*;
import controller.comm.*;
import controller.customer.CustomerLoginController;
import controller.customer.CustomerLogoutController;
import controller.customer.RegisterCustomerController;
import controller.matching.MatchingBasicController;
import controller.matching.MatchingLocationController;
import controller.reservation.CreateReservationController;
import controller.reservation.ListReservationController;
import controller.reservation.SetReservationDetails;

public class RequestMapping {
    private static final Logger logger = LoggerFactory.getLogger(DispatcherServlet.class);
    
    // 각 요청 uri에 대한 controller 객체를 저장할 HashMap 생성
    private Map<String, Controller> mappings = new HashMap<String, Controller>();

    public void initMapping() {
    	
    	//board
    	//승지 추가
    	//업데이트 페이지에서 넘어가는 페이지
    	
    	mappings.put("/board/update", new ForwardController("/driver/updateBoard.jsp"));
    	mappings.put("/driver/update/board",new UpdateBoardController());
    	
    	//board에 댓글 단거 처리하기
    	mappings.put("/board/comment", new SendBoardCommentController());
    	//운전자로 등록하기
//    	mappings.put("/driver/register/form", new CreateDriverController());
    	//board 삭제시 넘어가는 페이지
    	mappings.put("/board/delete", new DeleteBoardController());
    	//모든 board 테이블의 내용 가지고 오기
    	mappings.put("/driver", new ListBoardController());
//    	mappings.put("/driver/list", new ForwardController("/driver/boardList.jsp"));
    	mappings.put("/driver/register/board/form", new ForwardController("/driver/registerBoard.jsp"));
    	mappings.put("/driver/register/board", new CreateBoardController());
    	//내 보드 클릭시 넘어가는 페이지
    	mappings.put("/driver/myBoards", new ShowBoardsController());
    	//내 보드에서 수락하기
    	mappings.put("/board/allow", new AllowRequestController());
   
    	//board 클릭시 넘어가는 예약페이지
    	mappings.put("/reservation/view/init",  new SetReservationDetails());
    	//예약신청
    	mappings.put("/customer/reservation/submit", new CreateReservationController());
    	//내 예약정보 눌렀을 경우 넘어가는 controller
    	mappings.put("/customer/reservation/Info", new ListReservationController());
    	//로그인 클릭시 넘어가는 페이지
    	mappings.put("/customer/login/form", new ForwardController("/customer/joinForm.jsp"));
    	//검색창에 검색한 결과 보여주는 페이지
    	 mappings.put("/customer/LocationMatching", new MatchingLocationController());
    	//로케이션 포워드 
    	 mappings.put("/customer/locationMatching/Info", new ForwardController("/LocationMatching.jsp"));
    	 mappings.put("/customer/basicMatching/Info", new MatchingBasicController());
    	 
    	mappings.put("/customer/login", new CustomerLoginController());
    	mappings.put("/customer/logout", new CustomerLogoutController());
    	
    	mappings.put("/customer/register/form",  new ForwardController("/customer/joinForm.jsp"));
    	mappings.put("/customer/register",  new RegisterCustomerController());
    	
    	
    	// 각 uri에 대응되는 controller 객체를 생성 및 저장
        mappings.put("/", new ForwardController("index.jsp"));
//        mappings.put("/user/login/form", new ForwardController("/user/.jsp"));
        mappings.put("/user/login", new LoginController());
        mappings.put("/user/logout", new LogoutController());
        mappings.put("/user/list", new ListUserController());
        mappings.put("/user/view", new ViewUserController());
        
        // 회원 가입 폼 요청과 가입 요청 처리 병합 (폼에 커뮤니티 선택 메뉴 추가를 위함)
//      mappings.put("/user/register/form", new ForwardController("/user/registerForm.jsp"));
//      mappings.put("/user/register", new RegisterUserController());
        mappings.put("/user/register", new RegisterUserController());

        // 사용자 정보 수정 폼 요청과 수정 요청 처리 병합
//      mappings.put("/user/update/form", new UpdateUserFormController());
//      mappings.put("/user/update", new UpdateUserController());        
        mappings.put("/user/update", new UpdateUserController());
        
        mappings.put("/user/delete", new DeleteUserController());
        
        // 커뮤니티 관련 request URI 추가
        mappings.put("/community/list", new ListCommunityController());
        mappings.put("/community/view", new ViewCommunityController());
        mappings.put("/community/create/form", new ForwardController("/community/creationForm.jsp"));
        mappings.put("/community/create", new CreateCommunityController());
        mappings.put("/community/update", new UpdateCommunityController());
        
        
        logger.info("Initialized Request Mapping!");
    }

    public Controller findController(String uri) {	
    	// 주어진 uri에 대응되는 controller 객체를 찾아 반환
        return mappings.get(uri);
    }
}