package travel.carpool.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("Carpool/carpool_insertForm.jsp");
		
		return forward;

}
}
