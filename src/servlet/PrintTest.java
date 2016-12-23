package servlet;

import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import net.sf.json.JSONArray;

import com.gym.entity.Pay;

public class PrintTest {

	/**
	 * @author 苏博
	 * @title: main
	 * @date 2016-12-21 下午04:21:37
	 * @param args void
	 */
	public static void main(String[] args) {
		String m_id = "*";
//  PayDao pd = new PayDao();
//  List<Pay> p_list = pd.findByMId(m_id);
//  if(!p_list.isEmpty()){
  
  
  	List<Pay> p_list = new ArrayList<Pay>();
  	Pay p1 = new Pay();
  	Pay p2 = new Pay();
  	Pay p3 = new Pay();

  	p1.setId(401);
  	p1.setMember_id(211);
  	p1.setMessage("water");
  	p1.setNum(2);
  	p1.setMoney(10);
  	p1.setTime(new Date(20161214));
  	
  	p2.setId(402);
  	p2.setMember_id(222);
  	p2.setMessage("hatwater");
  	p2.setNum(1);
  	p2.setMoney(8);
  	p2.setTime(new Date(20161215));
  	
  	p3.setId(403);
  	p3.setMember_id(222);
  	p3.setMessage("coldwater");
  	p3.setNum(3);
  	p3.setMoney(9);
  	p3.setTime(new Date(20161216));
  	
  	if(m_id.equals("*")){
  		p_list.add(p1);
  		p_list.add(p2);
  		p_list.add(p3);
  	}else if(m_id.equals(211)){
  		p_list.add(p1);        		
  	}else if(m_id.equals(222)){
  		p_list.add(p2);   
  		p_list.add(p3);        		
  	}else{    		
  	}
  
  
  	ArrayList list = new ArrayList();
  	for (Pay pay : p_list) {
			HashMap map = new HashMap();
			map.put("id", pay.getId());
			map.put("member_id", pay.getMember_id());
			map.put("message", pay.getMessage());
			map.put("num", pay.getNum());
			map.put("money", pay.getMoney());
			map.put("time", pay.getTime().toString());
			list.add(map);
		}
  	JSONArray ja = JSONArray.fromObject(list);
		System.out.println(ja.toString());
	}

}
