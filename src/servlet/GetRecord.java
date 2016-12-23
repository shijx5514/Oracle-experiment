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
import com.gym.dao.RecordDao;
import com.gym.entity.Pay;
import com.gym.entity.Record;
import com.gym.entity.SqlToUnitDate;

public class GetRecord extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public GetRecord() {
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
        
        String m_id = request.getParameter("id");
        RecordDao rd = new RecordDao();
        List r_list = new ArrayList();
        if(m_id.equals("*")){
        	r_list = rd.findAll();
        }else{
        	r_list = rd.findByMId(m_id);
        }
        if(!r_list.isEmpty()){

//        List<Record> r_list = new ArrayList<Record>();
//    	Record r1 = new Record();
//    	Record r2 = new Record();
//    	Record r3 = new Record();
//
//    	r1.setId(501);
//    	r1.setMember_id(211);
//    	r1.setRecord_Time(new Date(20161201));
//    	
//    	r2.setId(502);
//    	r2.setMember_id(222);
//    	r2.setRecord_Time(new Date(20161202));
//    	
//    	r3.setId(503);
//    	r3.setMember_id(222);
//    	r3.setRecord_Time(new Date(20161203));
//        
//        	if(m_id.equals("*")){
//        		r_list.add(r1);
//        		r_list.add(r2);
//        		r_list.add(r3);
//        	}else if(m_id.equals("211")){
//        		r_list.add(r1);
//        	}else if(m_id.equals("222")){
//        		r_list.add(r2);
//        		r_list.add(r3);
//        	}else{
//            	PrintWriter out = response.getWriter();			  
//        		out.print("[]");      
//        		return;
//        	}
        
        
        	ArrayList list = new ArrayList();
        	for (int i = 0; i < r_list.size(); i++) {
        		Object []o = (Object[])r_list.get(i);
				HashMap map = new HashMap();
				map.put("id", o[0]);
				map.put("member_id", o[1]);
				map.put("record_time", SqlToUnitDate.stud(o[2].toString()));
				map.put("name", (String)o[3]);
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

}
