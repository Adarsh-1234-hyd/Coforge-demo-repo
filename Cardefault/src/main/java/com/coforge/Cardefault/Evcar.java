package com.coforge.Cardefault;

public class Evcar implements Carfeature{

	@Override
	public void blowhorn() {
		System.out.println("blowing horn from ev");
		
	}

	@Override
	public void brandname() {
		System.out.println("AUDI--EV");
		
	}
	public void EV() {
		System.out.println("EV IS DETECTED");
	}
 
}
