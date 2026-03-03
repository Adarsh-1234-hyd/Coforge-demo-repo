package com.coforge.day6;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class DemoOnTryCatch {
 public static void readfile() {
	 FileReader reader = new FileReader("data.txt");
 }
	public static void main(String[] args) throws FileNotFoundException {
		File f = new File("data.txt");
		f.delete();
		if(f!=null)
			System.out.println("file exists");
		else 
			throw new FileNotFoundException();
//		int a=5,b[]= {1,2,3,4,0,5};
//		//System.out.println(a/b);//throw arithmentic exception 
//		
//		try {
//			for(int i=0;i<=b.length;i++)
//			System.out.println(a/b[i]);
//		} catch (ArithmeticException e) {
//		  System.out.println("ARITHMETIC EXCEPTION");
//		  e.printStackTrace();
//		  System.out.println(e.getMessage());
//		  System.out.println(e.getCause());
//		}
//		
//		catch (RuntimeException e) {
//			System.out.println(e.getMessage());
//		}
//		
//		catch (Exception e) {
//			e.printStackTrace();
//		} 
		
//		 String s =null;
//		 try {
//			System.out.println(s.charAt(3));
//		} catch (NullPointerException e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//		finally {
//			System.out.println("Application completed");
//		}
		
		  readfile();
	}
	
}
