package com.coforge.payment;

public class Employeemain {
	public static void main(String[]args) {
		Employee e =   new Employee("Adarsh",123,"coforge", 25000);
   Employee e1 =   new Employee("Anmol",124,"coforge",3000);
   Employee e2 =   new Employee("DEEP",127,"coforge",4000);
   System.out.println(e);
   System.out.println(e1);
   System.out.println(e2);
   
   e.calsalary();
   e1.calsalary();
   e2.calsalary();
   
	}
   
}
