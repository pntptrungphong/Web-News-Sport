package poly.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class User {
	@Id
	public String Username;
	public String Password;
	public String Fullname;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String username, String password, String fullname) {
		super();
		Username = username;
		Password = password;
		Fullname = fullname;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getFullname() {
		return Fullname;
	}
	public void setFullname(String fullname) {
		Fullname = fullname;
	}
	
}
