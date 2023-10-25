package com.anuj;

import java.util.List;

public class User {
	private String UserName;
	private List<Product> product;

	public User() {
	}

	public User(String userName, List<Product> product) {
		super();
		UserName = userName;
		this.product = product;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public List<Product> getProduct() {
		return product;
	}

	public void setProduct(List<Product> product) {
		this.product = product;
	}

}
