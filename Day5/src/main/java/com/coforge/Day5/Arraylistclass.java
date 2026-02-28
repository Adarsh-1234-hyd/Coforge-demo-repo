package com.coforge.Day5;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class Arraylistclass {
	public static void main(String[] args) {
		ArrayList<Integer>Alist = new ArrayList<Integer>();
        Alist.add(34);
        Alist.add(23);
        Alist.add(24);
        Alist.add(14);
        Alist.add(84);
        for(int i = 0; i<Alist.size() ;i++) {
        	System.out.println(Alist.get(i));
        }
        System.out.println("-------------------");
        
        
//        Iterator<Integer>itr  = Alist.iterator();
//        while(itr.hasNext()){
//        	Integer i = itr.next();
//        	if(i==34)
//        		itr.remove();
//        	System.out.println(i);
//        }
//        	System.out.println("AFTER ITERATION ARRYA LIST IS");
//        	System.out.println(Alist);
        	
          System.out.println("FORWARD DIRECTION");
        
        	ListIterator<Integer>litr = Alist.listIterator();
        	while(litr.hasNext()) {
        		System.out.println(litr.next());
        	}
        	
        	System.out.println("reverse direction of list values");
        	
        	while(litr.hasPrevious())
        		System.out.println(litr.previous());
        	
        	
        	
        	ArrayList<Integer>alist=new ArrayList<Integer>();
        	alist.add(23);
        	alist.add(24);
        	alist.add(25);
        	
        	System.out.println(alist);
        	
        	
        	Alist.addAll(3, alist);
           System.out.println(Alist);             
           Alist.removeAll(alist);    
           
           System.out.println("AFTER REMOVING ");
           System.out.println(Alist);
           
           
            System.out.println("REPLACE ALL METHODE");
            Alist.replaceAll(e->e*2);
            System.out.println(Alist);
            
            System.out.println("HOW TO CLONE A LIST");
            ArrayList<Integer>Aclonelist = (ArrayList<Integer>)Alist.clone();
            System.out.println(Aclonelist);
            
            System.out.println("HASH CODE");
            System.out.println(Alist.hashCode());
            System.out.println(Aclonelist.hashCode());
            
            Alist.add(245);
            
            System.out.println(Alist.hashCode());
            System.out.println(Aclonelist.hashCode());
            
            
            System.out.println(Alist.contains(108));
                   
            Alist.forEach(e->System.out.println(e));
            System.out.println(Alist.indexOf(168));
            Alist.retainAll(alist);
            System.out.println(Alist);
            
            
	}
}
