package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servlet.DoctorService;
import servlet.OfficeService;


public class OfficeAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public OfficeAction() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

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
		String action=request.getParameter("method");//获取href链接传过来的值，根据不同method请求，调用不同方法
		System.out.println("get:"+action);
		if(action.equals("infor"))
		{
			infor(request,response);
			
		}
		else if(action.equals("order"))
		{
			order(request,response);
		}
		else if(action.equals("officeShow"))
		{
			officeShow(request,response);
		}
		else if(action.equals("editOffice"))
		{
			edit(request, response);
			
		}
		else if(action.equals("deleteOffice"))
		{
			deleteOffice(request, response);
			
		}
		else if(action.equals("allOffice"))
		{
			allOffice(request, response);
			
		}
	}

	
	private void allOffice(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OfficeService office=new OfficeService();
		List list=office.selectOffice();
		request.setAttribute("list", list);
		request.getRequestDispatcher("home.jsp").forward(request, response);
		
		
	}

	private void officeShow(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		OfficeService office=new OfficeService();
		List list=office.selectOffice();
		request.setAttribute("list", list);
		request.getRequestDispatcher("admin/office.jsp").forward(request, response);
	}

	private void deleteOffice(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OfficeService office=new OfficeService();
		String id=request.getParameter("id");	
		System.out.println("id:"+id);
		if(office.deleteOffice(id))
		{
			List list=office.selectOffice();
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/office.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('删除失败');history.go(-1);</script>");
		}
		
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OfficeService office=new OfficeService();
		String id=request.getParameter("id");		
		Map map=office.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("admin/updateoffice.jsp").forward(request, response);

		
	}

	private void order(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OfficeService office=new OfficeService();
		String id=request.getParameter("id");		
		Map map=office.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		
	}

	private void infor(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OfficeService office=new OfficeService();
		String id=request.getParameter("id");		
		Map map=office.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("introduction.jsp").forward(request, response);

		
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

	 if(action.equals("select"))
		{
		 select(request,response);
		}
		else if(action.equals("updateOffice"))
			{
			updateOffice(request,response);
			}
		else if(action.equals("addOffice"))
		{
			addOffice(request,response);
		}
	}
	
	private void addOffice(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("gbk");
		
		String name = request.getParameter("name");
		
		OfficeService officeService=new OfficeService();
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(officeService.addOffice(name))
		{
			out.print("<script type='text/javascript'>alert('添加成功');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('科室名称重复！');history.go(-1);</script>");
		}
	}

	private void updateOffice(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		OfficeService Office=new OfficeService();
		String name=request.getParameter("name");
	
		String id=request.getParameter("id");
		String introduction=request.getParameter("introduction");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(Office.updateOffice(name,id))
		{
			out.print("<script type='text/javascript'>alert('修改成功');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('修改失败');history.go(-1);</script>");
		}
	}

	private void select(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OfficeService Office=new OfficeService();
		String infor=request.getParameter("infor");
		
		List list=Office.select(infor);
		System.out.println("list.size:"+list.size());
		if(list.size()!=0)
		{
			request.setAttribute("list", list);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('找不到没有相应的信息');history.go(-1);</script>");
		}
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occure
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
