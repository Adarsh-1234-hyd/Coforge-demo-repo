package com.coforge.Day5;

import java.util.ArrayList;
import java.util.Collections;

public class CustomerArraylist {
     public static void main(String[] args) {
		Customer c1 = new Customer(1,"ADARSH","DL",56000);
		Customer c2 = new Customer(1,"ANMOL","HYD",56000);
		Customer c3 = new Customer(1,"NARENDRA","BOM",56000);
		Customer c4 = new Customer(1,"VIVEK","HYD",46000);
		Customer c5 = new Customer(1,"UDAY","HYD",57000);
		
		ArrayList<Customer>custlist = new ArrayList<Customer>();
		custlist.add(c1);
		custlist.add(c2);
		custlist.add(c3);
		custlist.add(c4);
		custlist.add(c5);
		
		
	   // Collections.sort(custlist);
		
		custlist.sort(new Citycomparartor().thenComparing(new ordercostcomparator()));
		custlist.forEach(cust->System.out.println(cust));
	}
}
