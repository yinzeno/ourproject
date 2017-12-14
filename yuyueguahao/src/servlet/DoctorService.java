package servlet;

import java.util.List;
import java.util.Map;

import jdbc.JDBConnection;



public class DoctorService {

	public List select(String infor) {
		List list=JDBConnection.queryForList("select *from doctor where name=? or type=?", new String[]{infor,infor});
		return list;
	}

	public Map selectId(String id) {
		Map map=null;
		try {
			map=JDBConnection.queryForMap("select *from doctor where id=?", new String[]{id});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}

	public boolean deleteDoctor(String id) {
		if(JDBConnection.update("delete from doctor where id=?", new String[]{id}))			
		return true;
		else
			return false;
	}

	public List selectDoctor() {
		List list=JDBConnection.queryForList(" select d.*,count(o.name)as maxnnum from doctor d  left join orders o on d.name=o.name group by d.name",null);
		return list;
	}

	public boolean addDoctor(String name, String type, String phone,
			String introduction,String age,String school,String workyear,String hospital,String guahaomny,String yuyue) {
		if(JDBConnection.update("insert into doctor(name,type,phone,introduction,age,school,workyear,hospital,guahaomny,yuyue) values (?,?,?,?,?,?,?,?,?,?)", new String[]{name,type,phone,introduction,age,school,workyear,hospital,guahaomny,yuyue}))
		return true;
		else
			return false;
	}

	public boolean updateDoctor(String name, String type, String phone,
			String introduction,String age,String school,String workyear, String id,String hospital,String guahaomny,String yuyue) {
		if(JDBConnection.update("update doctor set name=?,type=?,phone=?,introduction=?,age=?,school=?,workyear=?,hospital=?,guahaomny=?,yuyue=? where id=?", new String[]{name,type,phone,introduction,age,school,workyear,hospital,guahaomny,yuyue,id}))
			return true;
			else
				return false;
	}

}
