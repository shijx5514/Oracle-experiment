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

import com.gym.dao.FrontDao;
import com.gym.entity.Front;

import net.sf.json.JSONArray;


public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
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
		System.out.println("鎵ц浜哾oGet");
		
		
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
		request.setCharacterEncoding("utf-8"); // 璁剧疆缂栫爜  
        response.setCharacterEncoding("utf-8");  
        response.setContentType("text/html;charset=UTF-8");  
        
		String username = request.getParameter("username");	//鐢ㄦ埛鍚�
		String password = request.getParameter("password");	//瀵嗙爜
	
        
		System.out.println(username);
		FrontDao fd = new FrontDao();
		List<Front> front = fd.findByUName(username);
		if(!front.isEmpty()){
			Front f = front.get(0);
		
//			Front f = new Front();
//			f.setId(111111);
//			f.setPassWord("123456");
//			f.setUserName("shijiaxin");
		
			if(password.equals(f.getPassWord())){
				System.out.println(f.getName());
				request.getSession().setAttribute("username", f.getName());	//鐢ㄦ埛鍚�
				request.getSession().setAttribute("userid", f.getId());		//鐢ㄦ埛id
				request.getSession().setAttribute("status", "1");			//鐧诲綍鐘舵�侊紙1-鐧诲綍锛�0-鏈櫥褰曪級
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
		 
        
		
		/*doGet(request, response);*/
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
