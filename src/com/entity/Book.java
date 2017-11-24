package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity // 注解为hibernate实体 对应数据库中同名表
public class Book {
	
	public static final int type_special = 1;
	public static final int type_new = 2;
	public static final int type_sale = 3;
	
	@Id	// 注解主键
	@GeneratedValue //id生成策略  默认auto 相当于hibernate的native - 自增字段
	private int id;
	private String name;
	private String cover;
	private float price;
	private String intro;
	private String auther;
	private String press;
	private String pubdate;
	@ManyToOne
	@NotFound(action=NotFoundAction.IGNORE)
	private Category category;
	private boolean special;
	private boolean news;
	private boolean sale;
	
    /*private boolean monday;
    private boolean tuesday;
    private boolean wednesday;
	private boolean thursday;
    private boolean friday;
    private boolean saturday;
    private boolean sunday;

    
	public boolean getMonday() {
		return monday;
	}
    
	public boolean getTuesday() {
		return tuesday;
	}
    
	public boolean getWednesday() {
		return wednesday;
	}
	public boolean getThursday() {
		return thursday;
	}
    
	public boolean getFriday() {
		return friday;
	}
    
	
	public boolean getSaturday() {
		return saturday;
	}

	public boolean getSunday() {
		return sunday;
	}
	
	public void setMonday(boolean monday) {
		this.monday=monday;
	}
    
	public void setTuesday(boolean tuesday) {
		this.tuesday=tuesday;
	}
    
	public void setWednesday(boolean wednesday) {
		this.wednesday=wednesday;
	}
	public void setThursday(boolean thursday) {
		this.thursday=thursday;
	}
    
	public void setFriday(boolean friday) {
		this.friday=friday;
	}
    
	
	public void setSaturday(boolean saturday) {
		this.saturday=saturday;
	}

	public void setSunday(boolean sunday) {
		this.sunday=sunday;
	}*/
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getAuther() {
		return auther;
	}
	public void setAuther(String auther) {
		this.auther = auther;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
	public String getPubdate() {
		return pubdate;
	}
	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public boolean isSpecial() {
		return special;
	}
	public void setSpecial(boolean special) {
		this.special = special;
	}
	public boolean isNews() {
		return news;
	}
	public void setNews(boolean news) {
		this.news = news;
	}
	public boolean isSale() {
		return sale;
	}
	public void setSale(boolean sale) {
		this.sale = sale;
	}
	
	
}
