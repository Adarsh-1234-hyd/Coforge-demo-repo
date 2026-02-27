package com.coforge.Cardefault;

public interface Carfeature {
    public void blowhorn();
    public void brandname();
    public default void petrol() {
    	
      }
    public default void CNG() {
    	
       }
     public default void EV() {
	
     }
     public static void warrentypolicy(String Warr) {
		System.out.println("min warrenty in of"+Warr);
	}
}
