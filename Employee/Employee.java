package com.coforge.payment;

//import java.util.function.DoubleToIntFunction;

public class Employee {
   private String name;
   private int id;
   private String companyname;
   private double salary;
   private double netsal;
   public double getNetsal() {
	return netsal;
}

   public void setNetsal(double netsal) {
	this.netsal = netsal;
   }

   public Employee() {
	super();
   }
   
   public String getName() {
	return name;
   }
   public void setName(String name) {
	this.name = name;
   }
   public int getId() {
	return id;
   }
   public Employee(String name, int id, String companyname, int salary) {
	super();
	this.name = name;
	this.id = id;
	this.companyname = companyname;
	this.salary = salary;
   }
   public void setId(int id) {
	this.id = id;
   }
   public String getCompanyname() {
	return companyname;
   }
   public void setCompanyname(String companyname) {
	this.companyname = companyname;
   }
   public double getSalary() {
	return salary;
   }
   public void setSalary(int salary) {
	this.salary = salary;
   }
   public String toString() {
	return "Employee [name=" + name + ", id=" + id + ", companyname=" + companyname + ", salary=" + salary + "]";
}
   public void calsalary() {
	   double netsal = 0;
	   if(this.salary>50000) {
		   double hra =0.10;
		   double da = 0.10;
		   netsal=salary+salary*hra+salary*da;
	   }
	   else
		   netsal=this.salary;
	   System.out.println("NET SALARY:"+netsal);
   }
}
