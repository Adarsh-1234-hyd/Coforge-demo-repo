package com.coforge.Cardefault;

public class Petrolcar implements Carfeature{

	@Override
	public void blowhorn() {
		System.out.println("Blow horn");
		
	}

	@Override
	public void brandname() {
		System.out.println("BMW-PETROL");
		
	}
    public void petrol() {
    	System.out.println("petrol car is detected");
    }
}
