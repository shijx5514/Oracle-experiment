package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gym.dao.MemberDao;
import com.gym.entity.Member;

public class AddMember extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddMember() {
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
		System.out.println("0000000000");
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

		request.setCharacterEncoding("utf-8"); // 设置编码  
        response.setCharacterEncoding("utf-8");  
        response.setContentType("text/html;charset=UTF-8");  
        
        String name,sex,ic,phone,age,height,weight,fatbate;
        Date joindate,expiredate;
        Member m = new Member();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");		//设置日期格式
        
        try {
        	name = request.getParameter("name");
        	sex = request.getParameter("sex");
        	ic = request.getParameter("ic");
        	phone = request.getParameter("phone");
        	age = request.getParameter("age");
        	height = request.getParameter("height");
        	weight = request.getParameter("weight");
        	fatbate = request.getParameter("fatbate");
        	joindate = sdf.parse(request.getParameter("joindate"));
        	expiredate = sdf.parse(request.getParameter("expiredate"));
        	m.setName(name);
        	m.setSex(sex);
        	m.setIC(ic);
        	m.setM_Phone(phone);
        	m.setAge(Integer.parseInt(age));
        	m.setHeight(Integer.parseInt(height));
        	m.setWeight(Integer.parseInt(weight));
        	m.setFatBate(Double.parseDouble(fatbate));
        	m.setJoinDate( new java.sql.Date(joindate.getTime()));
        	m.setExpiredate( new java.sql.Date(expiredate.getTime()));
        	MemberDao md = new MemberDao();
        	List<Member> m_list = md.findByIc(ic);
        	if(m_list.isEmpty()){
        		md.add(m);
        		PrintWriter out = response.getWriter();			  
        		out.print("success"); 
        	}else{
        		PrintWriter out = response.getWriter();			  
        		out.print("error"); 
        	}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
