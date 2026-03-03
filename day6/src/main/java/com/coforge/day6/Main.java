package com.coforge.day6;

import java.util.HashSet;
import java.util.Scanner;

public class Main {
static	HashSet<Employee>empset=new HashSet<Employee>();
	static {
		empset.add(new Employee(123,"Adarsh",89000));
		empset.add(new Employee(143,"AADI",58000));
		empset.add(new Employee(153,"Aryan",85000));
		empset.add(new Employee(163,"Anmol",84000));
	}
   public static void main(String[] args) {
	 //READ OPERATION
	 empset.forEach(e->System.out.println(e));  
	  Scanner sc =  new Scanner(System.in);
	  System.out.println("ENTER EMPLOYEEE DETAILS");
	  Employee emp = new Employee(sc.nextLong(),sc.next(),sc.nextDouble());
	  empset.add(emp);
	  //UPDATE
	  System.out.println("ENTER EMPLOYEE ID FOR UPDATION");
	  long id = sc.nextLong();
//	  if(empset.contains(emp.getEmpId())){
//		  
//	  }
	  
	  //DELETE
}
}


// RUD ON EMPLOYEE SET
//1 CREATE INSERT
// 2 READ RETRIVE
// 3 UPDATE
// 4 DELETE
// 5 SINGLE EMPDELETE 