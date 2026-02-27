package com.coforge;

public class Outer {
	static String name;
	  public static void printDetails() {
		  name="Adarsh";
		  System.out.println("NAME:"+name);
	  }
	  
	 static class Inner{
		  private String innerclassname;
		  public void printDetailsofinner() {
			  this.innerclassname="DOBHAL";
			  System.out.println(innerclassname);
		  }
	  }
      public static void main(String[]args) {
//		  Outer out = new Outer();
//		  out.printDetails();
//		  Outer.inner In = new Outer().new inner();
//		  In.printDetailsofinner();  
		  Outer.name="ADARSH-DOBHAL";
		  Outer.printDetails();
		  Inner inner = new Inner();
		  inner.printDetailsofinner();
	  }

}
