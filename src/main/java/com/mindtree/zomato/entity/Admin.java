package com.mindtree.zomato.entity;

import java.util.List;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int adminId;
	private String adminName;
	private String password;
	
	@OneToMany
	List<Restuarent> restuarent;


	@OneToMany
	List<User> users;


	/**
	 * @return the adminId
	 */
	public int getAdminId() {
		return adminId;
	}


	/**
	 * @param adminId the adminId to set
	 */
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}


	/**
	 * @return the adminName
	 */
	public String getAdminName() {
		return adminName;
	}


	/**
	 * @param adminName the adminName to set
	 */
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}


	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}


	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}


	/**
	 * @return the restuarent
	 */
	public List<Restuarent> getRestuarent() {
		return restuarent;
	}


	/**
	 * @param restuarent the restuarent to set
	 */
	public void setRestuarent(List<Restuarent> restuarent) {
		this.restuarent = restuarent;
	}


	/**
	 * @return the users
	 */
	public List<User> getUsers() {
		return users;
	}


	/**
	 * @param users the users to set
	 */
	public void setUsers(List<User> users) {
		this.users = users;
	}


	public Admin(int adminId, String adminName, String password, List<Restuarent> restuarent, List<User> users) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.password = password;
		this.restuarent = restuarent;
		this.users = users;
	}


	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminName=" + adminName + ", password=" + password + ", restuarent="
				+ restuarent + ", users=" + users + "]";
	}

	

}
