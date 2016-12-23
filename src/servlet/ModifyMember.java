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

public class ModifyMember extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ModifyMember() {
		super();
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
        
        String id,name,sex,ic,phone,age,height,weight,fatbate;
        Date joindate,expiredate;
        Member m = new Member();
        SimpleDateFormat sdf = new SimpleDateFormat("mm-dd-yyyy");		//设置日期格式
        MemberDao md = new MemberDao();
        
        try {
        	id = request.getParameter("id");
        	name = request.getParameter("name");
        	sex = request.getParameter("sex");
        	ic = request.getParameter("ic");
        	phone = request.getParameter("M_Phone");
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
        	md.modify(m);
        	PrintWriter out = response.getWriter();			  
        	out.print("success"); 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
