package servlet;

import java.util.List;
import java.util.Map;

import jdbc.JDBConnection;

public class AdminService {
	// ����Ա��½�ж��û�����������ȷ
	public boolean equalsAdmin(String name, String password) {
		try {
			Map map=JDBConnection.queryForMap("select *from admin where name=? and password=?", new String[]{name,password});
			
		} catch (Exception e) {
			return false;
		} 
		return true;
	}

	
		// ��ȡ����������Ϣ����
		public List getAdmin() {
			List list=JDBConnection.queryForList("select *from admin", null);
			return list;
		}

		// ����ע����Ϣ����
		public boolean addAdmin(String name, String password) {
			String sql="insert into admin(name,password)values(?,?)";
			if(JDBConnection.update(sql, new String[]{name,password}))
				return true;
			else
			return false;
		}
		public List selectAdmin() {
			List list=JDBConnection.queryForList("select *from admin order by name desc",null);
			return list;
		}
}
