package com.coforge.day6;

public class BankApp {
  public static void main(String[] args) {
	
	  Account acc = new Account(1234567,"Adarsh","HSBC",2348390);
	  acc.withDraw(10000);
	  acc.deposit(10000);
	  acc.withDraw(12000);
}
}
