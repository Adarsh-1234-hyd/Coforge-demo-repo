package com.coforge.payment;

import java.util.Scanner;

public class ShapeMainClass {
    public static void main (String[]args) {
    	Shape sh;
    	String Type;
    	Scanner sc = new Scanner(System.in);
    		System.out.println("Enter the name of shape ot of circle and square whome you want to claculate");
              Type = sc.next();
    		//    	Circle c =  new Circle(7);
//    	c.area();
//    	c.parameter();
//        Square s =  new Square(4);
//        s.area();
//        s.parameter();
//        Shape sh = new Circle(2);
//        sh.area();
//        sh.parameter();
//        sh = new Square(2);
//        sh.area();
//        sh.parameter();
    		
    		if (Type.equals("circle")) {
    			System.out.println("CIRLCE DETECTED");
    			System.out.println("ENTER THE RADIUS");
				double radius = sc.nextDouble();
				sh = new Circle(radius);
				sh.area();
				sh.parameter();
			}
    		else if (Type.equals("Square")) {
				System.out.println("Square DETECTED ... INITILIZING PROCESS.......");
				System.out.println("Enter the value of side");
				double side  = sc.nextDouble();
				sh = new Square(side);
				sh.area();
				sh.parameter();
			}
    }
}
     