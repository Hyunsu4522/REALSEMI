package com.semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.semi.member.model.service.MemberService;
import com.semi.member.model.vo.Member;

/**
 * Servlet implementation class MemberUpdateController
 */
@WebServlet("/updateAddress.me")
public class MemberUpdateAddressController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateAddressController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//인코딩설정
		request.setCharacterEncoding("UTF-8");
		
		//요청시 전달된 데이터 추출하고 변수또는 객체에 저장
		String userId = request.getParameter("userId");
		String address = request.getParameter("address");
		String updateAddress = request.getParameter("addr1") + " " + request.getParameter("addr2");
		System.out.println(request.getParameter("addr1"));
		System.out.println(request.getParameter("addr2"));
		

		Member updateAdMem = new MemberService().updateAdMember(userId, address, updateAddress);
		
		if (updateAdMem == null) { // 실패
			//에러문구 담아서 에러페이지 포워딩
			request.setAttribute("errorMsg", "회원정보 수정에 실패하였습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		} else { //성공
			// session에 담겨있는 loginUser 바꿔치기
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "성공적으로 수정하였습니다.");
			session.setAttribute("loginUser", updateAdMem);
			
			//url 재요청 => 마이페이지 포워딩(/jsp/myPage.jsp)
			response.sendRedirect(request.getContextPath() + "/myPage.me");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
