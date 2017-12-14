package servlet;

import java.util.List;
import java.util.Map;

import jdbc.JDBConnection;



public class HospitalService {

	public List select(String infor) {
		List list=JDBConnection.queryForList("select *from hospital where name=? ", new String[]{infor});
		return list;
	}

	public Map selectId(String id) {
		Map map=null;
		try {
			map=JDBConnection.queryForMap("select *from hospital where id=?", new String[]{id});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}

	public boolean deleteHospital(String id) {
		if(JDBConnection.update("delete from hospital where id=?", new String[]{id}))			
		return true;
		else
			return false;
	}

	public List selectHospital() {
		List list=JDBConnection.queryForList("select *from hospital order by name desc",null);
		return list;
	}

	public boolean addHospital(String name, String hospitaladress) {
		if(JDBConnection.update("insert into hospital(name,hospitaladress) values (?,?)", new String[]{name,hospitaladress}))
		return true;
		else
			return false;
	}

	public boolean updateHospital(String name, String hospitaladress) {
		if(JDBConnection.update("update hospital set name=?,hospitaladress=? where id=?", new String[]{name,hospitaladress}))
			return true;
			else
				return false;
	}

}
