package com.coforge;

public class Calculator implements Simplecalculatorinterface, ScientificCalculatorInterface {

	@Override
	public int add(int a, int b) {
		
		return a+b;
	}

	@Override
	public int sub(int a, int b) {
		// TODO Auto-generated method stub
		return a-b;
	}

	@Override
	public int multiplication(int a, int b) {
		// TODO Auto-generated method stub
		return a*b;
	}
// scientific calci
	@Override
	public void division(int a, int b) {
		// TODO Auto-generated method stub
		System.out.println((float)a/b);
	}

	@Override
	public void power(double a, double b) {
		System.out.println(Math.pow(a, b));
		
	}

	@Override
	public void squareroot(double d) {
		System.out.println(Math.sqrt(d));
		
	}

	@Override
	public void logvalue(double num) {
		System.out.println(Math.log10(num));
		
	}
   
}
