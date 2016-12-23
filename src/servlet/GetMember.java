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

import com.gym.dao.MemberDao;
import com.gym.entity.Member;
import com.gym.entity.SqlToUnitDate;

public class GetMember extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public GetMember() {
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


		System.out.println("执行了doGet");
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
        MemberDao md = new MemberDao();
        List<Member> m_list = new ArrayList<Member>();
        if(m_id.equals("*")){
        	m_list = md.findAll();
        }else{
        	m_list = md.findById(m_id);
        }
        if(!m_list.isEmpty()){
        
//        	List<Member> m_list = new ArrayList<Member>();
//        	Member m1 = new Member();
//        	Member m2 = new Member();
//        	m1.setId(211);
//        	m1.setName("赵集伟");
//        	m1.setSex("男");
//        	m1.setAge(22);
//        	m1.setJoinDate(new Date(20161111));
//        	m1.setExpiredate(new Date(20161212));
//        	m1.setIC("1234567890");
//        	m1.setHeight(180);
//        	m1.setWeight(60);
//        	m1.setFatBate(0.5);
//        	m1.setCouch_id(333);
//        	m1.setM_Phone("13111111111");
//        	
//        	m2.setId(222);
//        	m2.setName("韩帅");
//        	m2.setSex("男");
//        	m2.setAge(21);
//        	m2.setJoinDate(new Date(20161010));
//        	m2.setExpiredate(new Date(20161111));
//        	m2.setIC("0987654321");
//        	m2.setHeight(185);
//        	m2.setWeight(70);
//        	m2.setFatBate(0.6);
//        	m2.setCouch_id(334);
//        	m2.setM_Phone("13222222222");
//        	
//        	if(m_id.equals("*")){
//        		m_list.add(m1);
//        		m_list.add(m2);
//        	}else if(m_id.equals("211")){
//        		m_list.add(m1);
//        	}else if(m_id.equals("211")){
//        		m_list.add(m2);
//        	}else{
//            	PrintWriter out = response.getWriter();			  
//    			out.print("[]"); 
//    			return;
//            }
        
        	ArrayList list = new ArrayList();
        	for (Member m : m_list) {
        		HashMap map = new HashMap();
        		map.put("id", m.getId());
        		map.put("name", m.getName());
        		map.put("sex", m.getSex());
        		map.put("age", m.getAge());
        		map.put("joindate", SqlToUnitDate.stud(m.getJoinDate()));
        		map.put("expiredate", SqlToUnitDate.stud(m.getExpiredate()));
        		map.put("ic", m.getIC());
        		map.put("height", m.getHeight());
        		map.put("weight", m.getWeight());
        		map.put("fatbate", m.getFatBate());
        		map.put("photo", m.getPhoto());
        		map.put("COACH_ID", m.getCouch_id());
        		map.put("M_Phone", m.getM_Phone());
        		list.add(map);
			}
        	JSONArray ja = JSONArray.fromObject(list);
			System.out.println(ja.toString());

			PrintWriter out = response.getWriter();			  
			out.print(ja.toString()); 
        }else{
        	PrintWriter out = response.getWriter();			  
			out.print("[]"); 
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
