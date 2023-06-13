package controller.driver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import model.DriverDTO;
import model.service.DriverManager;

public class DriverMypageController implements Controller{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		 String driverId = request.getParameter("driverStrId");
	      String password = request.getParameter("password");
//	      System.out.println(userId);
//	      System.out.println(password);
	      
	      try {
	          // 모델에 로그인 처리를 위임
	          DriverDTO dDto = new DriverDTO();
	          DriverManager dmg = DriverManager.getInstance();
	          dDto = dmg.findDriver(driverId);
	          dmg.update(dDto);
	         
	         // 세션에 사용자 이이디 저장
	         HttpSession session = request.getSession();
	         session.setAttribute(DriverSessionUtils.DRIVER_SESSION_KEY, dDto);
	         
	         return "/driver/mypage";         
	      } catch (Exception e) {
	         /* UserNotFoundException이나 PasswordMismatchException 발생 시
	          * 다시 login form을 사용자에게 전송하고 오류 메세지도 출력
	          */
	         request.setAttribute("updateFailed", true);
	         request.setAttribute("exception", e);
	            return "/driver/driverMyPage.jsp";         
	         }
	}


}
