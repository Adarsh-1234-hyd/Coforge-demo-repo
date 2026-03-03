package com.coforge.day6;

import java.security.PublicKey;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Account {
 private long AccNum;
 private String accName;
 private String BankName;
 private double Balance;
 
 public void withDraw(double amount) {
	 if (amount<this.Balance) {
		this.Balance=amount;
		System.out.println("Withdrawl sucessfully");
	}
	 else {
		 System.out.println("Insufficent funds");
	 }
 }
 public void deposit(double amount) {
	 this.Balance+=amount;
	 System.out.println("AMOUNT DEPOSITE");
 }
}
