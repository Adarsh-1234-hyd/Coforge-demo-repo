package com.coforge.Day5;

public class Customer implements Comparable<Customer>{
      private int cusid;
      private String cusname;
      private String city;
      private int ordercost;
	  public Customer() {
		super();
	  }
	  public Customer(int cusid, String cusname, String city, int ordercost) {
		super();
		this.cusid = cusid;
		this.cusname = cusname;
		this.city = city;
		this.ordercost = ordercost;
	  }
	  
	  
	  public int getCusid() {
		return cusid;
	}
	  public void setCusid(int cusid) {
		  this.cusid = cusid;
	  }
	  public String getCusname() {
		  return cusname;
	  }
	  public void setCusname(String cusname) {
		  this.cusname = cusname;
	  }
	  public String getCity() {
		  return city;
	  }
	  public void setCity(String city) {
		  this.city = city;
	  }
	  public int getOrdercost() {
		  return ordercost;
	  }
	  public void setOrdercost(int ordercost) {
		  this.ordercost = ordercost;
	  }
	  @Override
	  public String toString() {
		return "Customer [cusid=" + cusid + ", cusname=" + cusname + ", city=" + city + ", ordercost=" + ordercost
				+ "]";
	  }
	  
	  public int compareTo(Customer o) {
		  return(int)(this.getOrdercost()-o.getOrdercost());
	  }
      
      
      
}
