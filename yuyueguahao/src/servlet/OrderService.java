package servlet;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import jdbc.JDBConnection;

public class OrderService {

	public boolean isCanOrder(String time,
			String name) {
	Map map=null;
	int yuyue=0;
	Long maxnnum=null;
	try {
		map=JDBConnection.queryForMap("select d.yuyue,count(o.name)as maxnnum from orders o,doctor  d where d.name=o.name and o.name =? and o.time=? group by o.name",new String[]{name,time});
		
		if(map==null){
			return true;
		}
		if(map.get("yuyue")!=null){
			yuyue=Integer.parseInt((String) map.get("yuyue"));
		}
		if(map.get("maxnnum")!=null){
			maxnnum= (Long) map.get("maxnnum");
		}
		if(yuyue==maxnnum.intValue()){
			return false;
		}
	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return true;
	}
	public boolean addOrder(String tureName, String type, String time,
			String name) {
		if(JDBConnection.update("insert into orders(tureName,name,type,time) values (?,?,?,?)",new String[]{tureName,name,type,time}))
				return true;
		else
			
		return false;
	}

	public List selectOrder(String trueName) {
		List list=JDBConnection.queryForList("select *from orders where tureName=?", new String[]{trueName});
		return list;
	}
	public Map selectOrderForID(String id) throws Exception {
		Map list=JDBConnection.queryForMap("select *from orders where id=?", new String[]{id});
		return list;
	}

	public boolean cancel(String id) {
		if(JDBConnection.update("delete from orders where id=?", new String[]{id}))
		         return true;
		else
			return false;
	}
	public boolean updateOrder( String id,String callnum) {
		if(JDBConnection.update("update orders set callnum=? where id=?", new String[]{callnum,id}))
			return true;
			else
				return false;
	}

	public List getOrder() {
		//select * from orders o where 1=1 and o.name=? and o.time between ? and ? 
		
		List list=JDBConnection.queryForList("select *from orders",null);
		return list;
	}
	public List getOrderForSearch(String starttime,String endtime,String name) {
		//select * from orders o where 1=1  and o.time between ? and ? 
		List<String> params=new ArrayList<String>();
		StringBuffer sql=new StringBuffer("select * from orders o where 1=1 ");
		if(name!=null && !name.equals("")){
			sql.append(" and o.name=?");
			params.add(name);
		}
		if((starttime!=null && !starttime.equals("")) && (endtime!=null && !endtime.equals("")) ){
			sql.append(" and time between ? and ? ");
			params.add(starttime);
			params.add(endtime);
		}
		List list=JDBConnection.queryForList(sql.toString(),params.toArray());
		return list;
	}

}
