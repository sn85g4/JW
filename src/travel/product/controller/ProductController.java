package travel.product.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import travel.product.action.Action;
import travel.product.action.ActionForward;
import travel.product.action.InsertFormAction;
import travel.product.action.insertAction;

public class ProductController extends HttpServlet {
	 private static final long serialVersionUID = 1L;

	    public ProductController() {
	        super();
	    }

	    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
	       String requestURI = request.getRequestURI();
	       String contextPath = request.getContextPath();
	       String command = requestURI.substring(contextPath.length()+1);
	       System.out.println(command);
	       
	       ActionForward forward = null;
	       Action action = null;
	       
	   
	       if(command.equals("insertForm.do")){
	          action = new InsertFormAction();
	          try {
	             forward = action.execute(request, response);
	         } catch (Exception e) {
	            e.printStackTrace();
	         }

	       } else if(command.equals("insertAction.do")){
	          action = new insertAction();
	          try {
	            forward = action.execute(request, response);   
	         } catch (Exception e) {
	            e.printStackTrace();
	         }
	          
	          
	       }
	       
	       if(forward !=null){
	          if(forward.isRedirect()){
	             response.sendRedirect(forward.getPath());
	          } else {
	              RequestDispatcher dispatcher = 
	                    request.getRequestDispatcher(forward.getPath());
	              dispatcher.forward(request, response);
	          }
	       }
	       
	    }

	   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      doProcess(request, response);
	   }

	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      doProcess(request, response);
	   }

}