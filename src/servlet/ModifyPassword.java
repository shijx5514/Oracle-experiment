package servlet;

import java.io.IOException;

import java.io.PrintWriter;
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

public class ModifyPassword extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ModifyPassword() {
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
        
        String id = (String) request.getSession().getAttribute("id");
        String oldpwd = request.getParameter("oldpwd");
		String newpwd = request.getParameter("newpwd");
		
		FrontDao fd = new FrontDao();
		List<Front> front = fd.findById(id);
		if(!front.isEmpty()){
			Front f = front.get(0);
			if(f.getPassWord().equals(oldpwd)){
				f.setPassWord(newpwd);
				fd.modify(f);
				PrintWriter out = response.getWriter();
				out.print("success");
			}else{
				PrintWriter out = response.getWriter();
				out.print("error");
			}
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
