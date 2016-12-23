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

import com.gym.dao.PayDao;
import com.gym.entity.Member;
import com.gym.entity.Pay;
import com.gym.entity.SqlToUnitDate;

public class GetPay extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public GetPay() {
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
        
        String m_id = request.getParameter("id");
        PayDao pd = new PayDao();
        List p_list = new ArrayList();
        if(m_id.equals("*")){
        	p_list = pd.findAll();
        }else{
        	p_list = pd.findByMId(m_id);
        }
        if(!p_list.isEmpty()){
        
        
//        	List<Pay> p_list = new ArrayList<Pay>();
//        	Pay p1 = new Pay();
//        	Pay p2 = new Pay();
//        	Pay p3 = new Pay();
//
//        	p1.setId(401);
//        	p1.setMember_id(211);
//        	p1.setMessage("water");
//        	p1.setNum(2);
//        	p1.setMoney(10);
//        	p1.setTime(new Date(20161214));
//        	
//        	p2.setId(402);
//        	p2.setMember_id(222);
//        	p2.setMessage("hatwater");
//        	p2.setNum(1);
//        	p2.setMoney(8);
//        	p2.setTime(new Date(20161215));
//        	
//        	p3.setId(403);
//        	p3.setMember_id(222);
//        	p3.setMessage("coldwater");
//        	p3.setNum(3);
//        	p3.setMoney(9);
//        	p3.setTime(new Date(20161216));
//        	
//        	if(m_id.equals("*")){
//        		p_list.add(p1);
//        		p_list.add(p2);
//        		p_list.add(p3);
//        	}else if(m_id.equals(211)){
//        		p_list.add(p1);        		
//        	}else if(m_id.equals(222)){
//        		p_list.add(p2);   
//        		p_list.add(p3);        		
//        	}else{
//            	PrintWriter out = response.getWriter();			  
//        		out.print("[]");    
//        		return;
//        	}
        
        
        	ArrayList list = new ArrayList();
    		for (int i = 0; i < p_list.size(); i++) {
    			Object []o = (Object[])p_list.get(i);
    			HashMap map = new HashMap();
    			map.put("id",o[0]);
    			map.put("member_id", o[1]);
    			map.put("message", (String)o[2]);
    			map.put("num", o[5]);
    			map.put("money", o[3]);
    			map.put("time", SqlToUnitDate.stud(o[4].toString()));
    			map.put("name", o[6]);
    			list.add(map);
    		}
        	JSONArray ja = JSONArray.fromObject(list);
			System.out.println(ja.toString());
        	PrintWriter out = response.getWriter();			  
    		out.print(ja.toString()); 
        
        }
//        else{
//        	PrintWriter out = response.getWriter();			  
//    		out.print("[]"); 
//        }
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
