package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlet.OrderService;

public class OrderAction extends HttpServlet {

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
		
		String action=request.getParameter("method");//��ȡhref���Ӵ�������ֵ�����ݲ�ͬmethod���󣬵��ò�ͬ����
		System.out.println("get:"+action);
		if(action.equals("orderList"))
		{
			orderList(request,response);
		}
		else if(action.equals("cancel"))
		{
			cancel(request,response);
		}
		else if(action.equals("orderShowForOne"))
		{
			orderShowForOne(request,response);
		}
		else if(action.equals("orderShowForSearch"))
		{
			orderShowForSearch(request,response);
		}
		else if(action.equals("deleteOrder"))
		{
			deleteOrder(request,response);
		}
		 else if(action.equals("updateOrder"))
		 {
			 try {
				updateOrder(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
	}

	private void orderList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		OrderService order=new OrderService();
		HttpSession session=request.getSession();
		String trueName=(String)session.getAttribute("trueName");
		List list=order.selectOrder(trueName);
		request.setAttribute("list",list);
		request.getRequestDispatcher("orderList.jsp").forward(request, response);
		
	}

	private void deleteOrder(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OrderService order=new OrderService();
		String id=request.getParameter("id");
		if(order.cancel(id))
		{
			List list=order.getOrder();
			request.setAttribute("list",list);
			request.getRequestDispatcher("admin/order.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('ɾ��ʧ��');history.go(-1);</script>");
		}
		
	}
	private void updateOrder(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("gbk");
		OrderService order=new OrderService();
		String id=request.getParameter("id");
		Map olist=order.selectOrderForID(id);
		Integer callnum=  (Integer) olist.get("callnum");
		int num=callnum+1;
		if(order.updateOrder(id, num+""))
		{
			HttpSession session=request.getSession();
			String name=(String)session.getAttribute("name");
			SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
			String now=dateFormat.format(new Date());
			
			List list=order.getOrderForSearch(now, now, name);
			request.setAttribute("list",list);
			request.getRequestDispatcher("admin/orderForOne.jsp").forward(request, response);
		}
		else
		{
			response.setContentType("text/html;charset=GBK");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('ǩ��ʧ��');history.go(-1);</script>");
		}
		
	}

	private void orderShow(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OrderService order=new OrderService();
		List list=order.getOrder();
		request.setAttribute("list",list);
		request.getRequestDispatcher("admin/order.jsp").forward(request, response);
		
	}
	private void orderShowForOne(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OrderService order=new OrderService();
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("name");
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
		String now=dateFormat.format(new Date());
		
		List list=order.getOrderForSearch(now, now, name);
		request.setAttribute("list",list);
		request.getRequestDispatcher("admin/orderForOne.jsp").forward(request, response);
		
	}
	private void orderShowForSearch(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		OrderService order=new OrderService();
		String name=request.getParameter("name");		
		String starttime=request.getParameter("starttime");		
		String endtime=request.getParameter("endtime");		
		List list=order.getOrderForSearch(starttime, endtime, name);
		request.setAttribute("list",list);
		request.getRequestDispatcher("admin/order.jsp").forward(request, response);
		
	}

	private void cancel(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("gbk");
		String id=request.getParameter("id");
		OrderService order=new OrderService();
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(order.cancel(id))
		{
			HttpSession session=request.getSession();
			String trueName=(String)session.getAttribute("trueName");
			List list=order.selectOrder(trueName);
			request.setAttribute("list",list);
			request.getRequestDispatcher("orderList.jsp").forward(request, response);
		}
		else{
			out.print("<script type='text/javascript'>alert('ȡ��ʧ��');history.go(-1);</script>");
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
		request.setCharacterEncoding("gbk");
		String action=request.getParameter("method");//��ȡ<form>��action��������ֵ�����ݲ�ͬaction���󣬵��ò�ͬ����
		System.out.println("post:"+action);

	 if(action.equals("order"))
		{
		order(request,response);
		}
	 else if(action.equals("orderShowForSearch"))
		{
			orderShowForSearch(request,response);
		}
	
	}

	private void order(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("gbk");
		OrderService order=new OrderService();
		String tureName=request.getParameter("tureName");
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String time=request.getParameter("time");
		response.setContentType("text/html;charset=GBK");
		PrintWriter out=response.getWriter();
		if(!order.isCanOrder(time, name)){
			out.print("<script type='text/javascript'>alert('Ԥ��ʧ��,����ԤԼ����������');history.go(-1);</script>");
		}else{
			if(order.addOrder(tureName,type,time,name))
			{
				out.print("<script type='text/javascript'>alert('Ԥ���ɹ�');window.location='home.jsp';</script>");
			}
			else
			{
				out.print("<script type='text/javascript'>alert('Ԥ��ʧ��');history.go(-1);</script>");
			}
		}
	
		
	}

}
