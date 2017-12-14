package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servlet.DoctorService;
import servlet.HospitalService;

public class HospitalAction extends HttpServlet {

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
		else if(action.equals("hospitalShow"))
		{
			hospitalShow(request,response);
		}
		else if(action.equals("editHospital"))
		{
			edit(request, response);
			
		}
		else if(action.equals("deleteHospital"))
		{
			deleteHospital(request, response);
			
		}
		else if(action.equals("allHospital"))
		{
			allHospital(request, response);
			
		}
	}

	private void allHospital(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		HospitalService hospital=new HospitalService();
		List list=hospital.selectHospital();
		request.setAttribute("list", list);
		request.getRequestDispatcher("home.jsp").forward(request, response);
		
		
	}

	private void hospitalShow(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HospitalService hospital=new HospitalService();
		List list=hospital.selectHospital();
		request.setAttribute("list", list);
		request.getRequestDispatcher("admin/hospital.jsp").forward(request, response);
	}

	private void deleteHospital(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		HospitalService hospital=new HospitalService();
		String id=request.getParameter("id");	
		System.out.println("id:"+id);
		if(hospital.deleteHospital(id))
		{
			List list=hospital.selectHospital();
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/hospital.jsp").forward(request, response);
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
		HospitalService hospital=new HospitalService();
		String id=request.getParameter("id");		
		Map map=hospital.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("admin/updateHospital.jsp").forward(request, response);

		
	}

	private void order(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		HospitalService hospital=new HospitalService();
		String id=request.getParameter("id");		
		Map map=hospital.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		
	}

	private void infor(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		HospitalService hospital=new HospitalService();
		String id=request.getParameter("id");		
		Map map=hospital.selectId(id);		
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
		else if(action.equals("updateHospital"))
			{
			updateHospital(request,response);
			}
		else if(action.equals("addHospital"))
		{
			addHospital(request,response);
		}

	}

	private void addHospital(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		HospitalService hospital=new HospitalService();
		String name=request.getParameter("name");
		String hospitaladress=request.getParameter("hospitaladress");
		
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(hospital.addHospital(name,hospitaladress))
		{
			out.print("<script type='text/javascript'>alert('添加成功');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('添加失败');history.go(-1);</script>");
		}
		
	}

	private void updateHospital(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		HospitalService hospital=new HospitalService();
		String name=request.getParameter("name");
		String hospitaladress=request.getParameter("hospitaladress");
		String id=request.getParameter("id");
		
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(hospital.updateHospital(name,hospitaladress))
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
		HospitalService hospital=new HospitalService();
		String infor=request.getParameter("infor");
		
		List list=hospital.select(infor);
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

}
