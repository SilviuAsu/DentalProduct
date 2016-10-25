package Entitati;

import java.sql.Blob;

public class Produse {
	private int id;
	private String Website;
	private String Category;
	private String Name;
	private String Price;
	private String Description;
	private String link;
	private String productImage;
	
	
	
	
	public Produse(int id, String website, String category, String name, String price, String description, String link,
			String productImage) {
		super();
		this.id = id;
		Website = website;
		Category = category;
		Name = name;
		Price = price;
		Description = description;
		this.link = link;
		this.productImage = productImage;
	}
	public Produse() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWebsite() {
		return Website;
	}
	public void setWebsite(String website) {
		Website = website;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;

	}

}
