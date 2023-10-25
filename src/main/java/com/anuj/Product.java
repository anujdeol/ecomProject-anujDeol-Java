package com.anuj;

public class Product {
	private int id;

	public int getId() {
		return id;
	}

	@Override
	public boolean equals(Object obj) {
		System.out.println("checkkk");
		Product p = (Product) obj;
		if (this.name.equals(p.getName())) {
			return true;
		}
		return false;
	}

	public void setId(int id) {
		this.id = id;
	}

	private int price;
	private String name;

	public Product(int price, String name) {
		super();
		this.price = price;
		this.name = name;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", price=" + price + ", name=" + name + "]";
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Product() {
		// TODO Auto-generated constructor stub
	}

}
