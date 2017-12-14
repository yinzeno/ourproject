package servlet;

import java.util.List;
import java.util.Map;

import jdbc.JDBConnection;



public class OfficeService {

	public List select(String infor) {
		List list=JDBConnection.queryForList("select *from office where name=? ", new String[]{infor});
		return list;
	}

	public Map selectId(String id) {
		Map map=null;
		try {
			map=JDBConnection.queryForMap("select *from office where id=?", new String[]{id});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}

	public boolean deleteOffice(String id) {
		if(JDBConnection.update("delete from office where id=?", new String[]{id}))			
		return true;
		else
			return false;
	}

	public List selectOffice() {
		List list=JDBConnection.queryForList("select *from office order by name desc",null);
		return list;
	}

	public boolean addOffice(String name) {
		if(JDBConnection.update("insert into office(name) values (?)", new String[]{name}))
		return true;
		else
			return false;
	}

	public boolean updateOffice(String name,String id) {
		if(JDBConnection.update("update office set name=? where id=?", new String[]{name,id}))
			return true;
			else
				return false;
	}

}
