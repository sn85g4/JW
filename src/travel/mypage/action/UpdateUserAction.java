package travel.mypage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import travel.users.model.UsersDao;

public class UpdateUserAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, Exception {
		HttpSession session = request.getSession();
		String u_id = session.getAttribute("member_id").toString();
		
		String u_pwd = request.getParameter("u_pwd");
		
		System.out.println("update"+u_pwd);
		UsersDao dao = UsersDao.getInstance();
		boolean result = dao.checkPw(u_id, u_pwd);
		
		ActionForward forward = new ActionForward();
		
		if(result==true){
			forward.setRedirect(false);
			forward.setPath("/MyPage/mypage_usersUpdateForm.jsp");
		}else{
			forward.setRedirect(false);
			forward.setPath("/MyPage/mypage_FailCheckPw.jsp");
		}
		return forward;
	}

}
