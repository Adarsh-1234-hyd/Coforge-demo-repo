package com.coforge.Cardefault;

import java.util.Scanner;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
        System.out.println("Hello World!");
           try (Scanner sc = new Scanner(System.in)) {
			System.out.println("ENTER THE MODEL OF THE CAR");
			   String model = sc.next().toLowerCase();
			if (model .equals("petrol")) {
				Carfeature ci =  new Petrolcar();
			  ci.blowhorn();
			  ci.brandname();
			  ci.petrol();
			  Carfeature.warrentypolicy("4");
			}else if (model.equals("cng")) {
				Carfeature ci =  new Cngcar();
//			ci = new Cngcar();
			    ci.blowhorn();
			    ci.brandname();
			    ci.CNG();
			    Carfeature.warrentypolicy("7");
			}else if (model.equals("ev")) {
				Carfeature ci =  new Evcar();
				//ci = new Evcar();
			    ci.blowhorn();
			    ci.brandname();
			    ci.EV();
			    Carfeature.warrentypolicy("10");
			}else {
				System.out.println("NOT EXIST TRy SOMETHING ELSE");
			}
//        
//        
//        
		}
    }
}
