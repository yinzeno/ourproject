package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlet.AdminService;
import servlet.DoctorService;

public class AdminAction extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	
	//http://127.0.0.1:8080/yuyueguahao/AdminAction?method=adminLogin
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		String action =request.getParameter("method");
		System.out.println("get:" + action);
		if (action.equals("adminLogin")) {
			request.getRequestDispatcher("admin/adminLogin.jsp").forward(request, response);
		}
		if (action.equals("adminAdd")) {
			AdminService admin = new AdminService();
			List list=admin.selectAdmin();
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/adminAdd.jsp").forward(request, response);
		}
	
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AdminService admin = new AdminService();
		request.setCharacterEncoding("gbk");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		System.out.println("name:" + name);
		// 管理员登陆
		String action=request.getParameter("method");
		if(action.equals("loginDo"))
		{
			if (admin.equalsAdmin(name, password)) {
				HttpSession session=request.getSession();
				session.setAttribute("name", name);
				request.getRequestDispatcher("admin/doctor.jsp").forward(request, response);
			} 
			
			else {
				response.setContentType("text/html;charset=GBK");
				PrintWriter out = response.getWriter();
				out.print("<script type='text/javascript'>alert('管理员或者密码错误!');history.go(-1);</script>");
			}
		}
		
		else if(action.equals("addAdmin"))
		{
			addAdmin(request,response);
		}
		

		
	
	}
	private void addAdmin(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		AdminService admin=new AdminService();
		String name=request.getParameter("name");
		String password=request.getParameter("password");

		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(admin.addAdmin(name, password))
		{
			out.print("<script type='text/javascript'>alert('添加成功');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('添加失败');history.go(-1);</script>");
		}
		
	}
}
