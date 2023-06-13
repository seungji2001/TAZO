package controller.customer;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.user.UserSessionUtils;
import model.CustomerDTO;
import model.dao.CustomerDAO;
import model.service.CustomerManager;


public class CustomerLogoutController implements Controller{
   @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      //세션에 저장된 사용자 이이디를 삭제하고 세션을 무효화 함 
      HttpSession session = request.getSession();
      session.removeAttribute("userId");
   
      System.out.println(session.getAttribute("userId"));
      return "redirect:/driver";
    }
}