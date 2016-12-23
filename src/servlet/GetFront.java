package servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import com.gym.dao.FrontDao;
import com.gym.entity.Front;
import com.gym.entity.SqlToUnitDate;

public class GetFront extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public GetFront() {
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
        
        String id = request.getParameter("id");
        FrontDao fd = new FrontDao();
		List<Front> front = fd.findById(id);
		if(!front.isEmpty()){
			Front f = front.get(0);
        
//	        Front f = new Front();
//        	if(id.equals("111111")){
//    			f.setId(111111);
//    			f.setPassWord("123456");
//    			f.setUserName("shijiaxin");
//    			f.setJoinDate(new Date(20160101));
//        	}else{
//    			PrintWriter out = response.getWriter();
//    			out.print("error");
//    			return;
//        	}
        
			HashMap map = new HashMap();
			map.put("id", f.getId());
			map.put("username", f.getUserName());
			map.put("password", f.getPassWord());
			map.put("name", f.getName());
			map.put("joindate", SqlToUnitDate.stud(f.getJoinDate()));
			ArrayList list = new ArrayList();
			list.add(map);
			JSONArray ja = JSONArray.fromObject(list);
			System.out.println(ja.toString());
			PrintWriter out = response.getWriter();
			out.print(ja.toString());
		}else{
			PrintWriter out = response.getWriter();
			out.print("error");
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
