package control;

import java.awt.List;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import servlet.UserService;

public class UserAction extends HttpServlet {

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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		String action=request.getParameter("method");//获取href链接传过来的值，根据不同method请求，调用不同方法
		System.out.println("get:"+action);
		if(action.equals("userLogin"))
		{
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		else if(action.equals("register"))
		{
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
		else if(action.equals("exit"))
		{
			exit(request, response);
		}
		else if(action.equals("userShow"))
		{
			userShow(request, response);
		}
		else if(action.equals("deleteUser"))
		{
			deleteUser(request, response);
		}
		else if(action.equals("returnIndex"))
		{
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
	}

	private void deleteUser(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
	request.setCharacterEncoding("gbk");
	UserService user=new UserService();
	String id=request.getParameter("id");
	if(user.deleteUser(id))
	{
		java.util.List list=user.getUser();
		request.setAttribute("list", list);
		request.getRequestDispatcher("admin/user.jsp").forward(request, response);		
	}
	else
	{
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		out.print("<script type='text/javascript'>alert('删除失败');history.go(-1);</script>");
	}
	}

	private void userShow(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserService user=new UserService();
		 java.util.List list=user.getUser();
		request.setAttribute("list", list);
		request.getRequestDispatcher("admin/user.jsp").forward(request, response);		
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
		request.setCharacterEncoding("gbk");
		String action=request.getParameter("method");//获取<form>表单action传过来的值，根据不同action请求，调用不同方法
		System.out.println("post:"+action);

	 if(action.equals("login"))
		{
			login(request,response);
		}
		else if(action.equals("updateUser"))
		{
			updateUser(request,response);
		}
		else if(action.equals("register"))
		{
			register(request,response);
		}
	}
	private void exit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		session.removeAttribute("tureName");
		session.invalidate();
		req.getRequestDispatcher("index.jsp").forward(req, resp);		
	}
	private void register(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		UserService user=new UserService();
		String trueName=request.getParameter("trueName");
		String number=request.getParameter("number");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(user.addUser(trueName,number,phone,address))
		{
			out.print("<script type='text/javascript'>alert('注册成功,请登录');window.location='index.jsp';</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('注册失败');history.go(-1);</script>");
		}
		
		
	}

	private void updateUser(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		UserService fans=new UserService();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println("username:"+username);
		if(fans.login(username,password))
		{			
			HttpSession session=request.getSession();
			session.setAttribute("trueName", username);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		else{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('真实姓名或者密码错误');history.go(-1);</script>");
		}
		
	}

}
