package com.coforge.payment;

public class Final {     //FINAL CLASS CAN NOT BE EXTENDED
     protected final String name1 = "ADARSH1";
     
     public final void printdetails() {
    	 //this.name="ADARSH";  BECAUSE OF FINAL
    	 System.out.println(this.name1);
     }
     public static void main(String[] args) {
		Final final1 = new Final();
		final1.printdetails();
		final double pi = 3.14;
		// final variable can not be reassign
	}
}
