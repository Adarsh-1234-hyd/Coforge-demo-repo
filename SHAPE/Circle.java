package com.coforge.payment;

public class Circle implements Shape {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	 private double radius;
 
	public Circle() {
		super();
	}

	public Circle(double radius) {
		super();
		this.radius = radius;
	}


	@Override
	public void area() {
		System.out.println(3.14*radius*radius);
		
	}

	@Override
	public void parameter() {
		System.out.println(2*3.14*radius);
		
	}

}
