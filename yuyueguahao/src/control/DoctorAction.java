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
import servlet.OfficeService;

public class DoctorAction extends HttpServlet {

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
		OfficeService office=new OfficeService();
		List officelist=office.selectOffice();
		request.setAttribute("officelist", officelist);
		
		HospitalService hospital=new HospitalService();
		List hospitallist=hospital.selectHospital();
		request.setAttribute("hospitallist", hospitallist);
		
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
		else if(action.equals("doctorShow"))
		{
			doctorShow(request,response);
		}
		else if(action.equals("editDoctor"))
		{
			edit(request, response);
			
		}
		else if(action.equals("deleteDoctor"))
		{
			deleteDoctor(request, response);
			
		}
		else if(action.equals("allDoctor"))
		{
			allDoctor(request, response);
			
		}
	}

	private void allDoctor(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		List list=doctor.selectDoctor();
		request.setAttribute("list", list);
		request.getRequestDispatcher("home.jsp").forward(request, response);
		
		
	}

	private void doctorShow(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		DoctorService doctor=new DoctorService();
		List list=doctor.selectDoctor();
		request.setAttribute("list", list);
		request.getRequestDispatcher("admin/doctor.jsp").forward(request, response);
	}

	private void deleteDoctor(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String id=request.getParameter("id");	
		System.out.println("id:"+id);
		if(doctor.deleteDoctor(id))
		{
			List list=doctor.selectDoctor();
			request.setAttribute("list", list);
			request.getRequestDispatcher("admin/doctor.jsp").forward(request, response);
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
		DoctorService doctor=new DoctorService();
		String id=request.getParameter("id");		
		Map map=doctor.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("admin/updateDoctor.jsp").forward(request, response);

		
	}

	private void order(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String id=request.getParameter("id");		
		Map map=doctor.selectId(id);		
			request.setAttribute("map", map);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		
	}

	private void infor(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String id=request.getParameter("id");		
		Map map=doctor.selectId(id);		
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
		OfficeService office=new OfficeService();
		List officelist=office.selectOffice();
		request.setAttribute("officelist", officelist);
		
		HospitalService hospital=new HospitalService();
		List hospitallist=hospital.selectHospital();
		request.setAttribute("hospitallist", hospitallist);
	 if(action.equals("select"))
		{
		 select(request,response);
		}
		else if(action.equals("updateDoctor"))
			{
			updateDoctor(request,response);
			}
		else if(action.equals("addDoctor"))
		{
			addDoctor(request,response);
		}

	}

	private void addDoctor(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String phone=request.getParameter("phone");
		String guahaomny=request.getParameter("guahaomny");
		String yuyue=request.getParameter("yuyue");
		String age=request.getParameter("age");
		String school=request.getParameter("school");
		String hospital=request.getParameter("hospital");
		String workyear=request.getParameter("workyear");
		String introduction=request.getParameter("introduction");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(doctor.addDoctor(name,type,phone,introduction,age,school,workyear,hospital,guahaomny,yuyue))
		{
			out.print("<script type='text/javascript'>alert('添加成功');history.go(-1);</script>");
		}
		else
		{
			out.print("<script type='text/javascript'>alert('添加失败');history.go(-1);</script>");
		}
		
	}

	private void updateDoctor(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		DoctorService doctor=new DoctorService();
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String phone=request.getParameter("phone");
		String guahaomny=request.getParameter("guahaomny");
		String yuyue=request.getParameter("yuyue");
		String age=request.getParameter("age");
		String school=request.getParameter("school");
		String workyear=request.getParameter("workyear");
		String hospital=request.getParameter("hospital");
		String id=request.getParameter("id");
		String introduction=request.getParameter("introduction");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(doctor.updateDoctor(name,type,phone,introduction,age,school,workyear,id,hospital,guahaomny,yuyue))
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
		DoctorService doctor=new DoctorService();
		String infor=request.getParameter("infor");
		
		List list=doctor.select(infor);
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
