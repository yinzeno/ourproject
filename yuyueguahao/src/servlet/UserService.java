package servlet;

import java.util.List;
import java.util.Map;

import jdbc.JDBConnection;

public class UserService {

	// ɾ��������Ϣ����
	public boolean deleteUser(String tId) {
		if(JDBConnection.update("delete from users where id=?", new String[]{tId}))
			return true;
		else
			return false;
	}
	// ��ȡ����������Ϣ����
	public List getUser() {
		List list=JDBConnection.queryForList("select *from users", null);
		return list;
	}


	// ���Ե�½��Ϣ����
	public boolean login(String username, String password) {
		try {
			Map map=JDBConnection.queryForMap("select *from users where trueName=? and number=?", new String[]{username,password});
			
		} catch (Exception e) {
			return false;
		} 
		return true;
	}
	// ����ע����Ϣ����
	public boolean addUser(String trueName, String number, String phone,
			String address) {
		String sql="insert into users(trueName,number,phone,address)values(?,?,?,?)";
		if(JDBConnection.update(sql, new String[]{trueName,number,phone, address}))
			return true;
		else
		return false;
	}

}
