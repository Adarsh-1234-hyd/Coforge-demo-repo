package com.coforge.day6;

public class Demo {
	
	public static void calculate() {
		int a = 5,b=0;
		if(b==0)
			throw new ArithmeticException();
		else
			System.out.println(a/b);
	}
	public static void checkAge(int age) throws Agenotsufficientexception {
		if(age>15)
			System.out.println("ELIGIBLE TO REGISTOR PLUS TWO");
		else {
			throw new Agenotsufficientexception();
		}
	}

  public static void main(String[] args) {
	   try {
		   calculate();
	   }
	   catch (ArithmeticException e) {
		// TODO: handle exception
		   e.printStackTrace();
	}
	   System.out.println("Application completed");
	}
}
