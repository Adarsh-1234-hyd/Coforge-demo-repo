package com.coforge.day6;


import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public class DemoOnMaps {

	public static void main(String[] args) {
		
		HashMap<Integer, String> hashMap = new HashMap<Integer, String>();
		hashMap.put(1 ,"Ethan");
		hashMap.put(2,"Smit");
		hashMap.put(4, "TOMCRUISE");
		hashMap.put(5,"Jhon wick");
		
		
		System.out.println(hashMap);
		for(Integer key:hashMap.keySet())
			System.out.println(key);
		for(String val:hashMap.values())
			System.out.println(val);
//		hashMap.put(null,"amit");
//		System.out.println(hashMap);
		System.out.println(hashMap.containsKey(5));
		System.out.println(hashMap.containsValue("Smit"));
		Set<Entry<Integer, String>>entryset = hashMap.entrySet();
		System.out.println(entryset);
		Iterator<Entry<Integer, String>> itr=entryset.iterator();
		while(itr.hasNext())
			System.out.println(itr.next());
		System.out.println(hashMap.get(5));
		
		
		TreeMap<Integer, String> fruitTree = new TreeMap<Integer, String>();
		fruitTree.put(1, "Apple");
		fruitTree.put(2, "Orange");
		fruitTree.put(3, "Banana");
		fruitTree.put(4, "Mango");
		
	 System.out.println(fruitTree);
	 
	 for(Integer key:fruitTree.keySet())
		 System.out.println(fruitTree.get(key));
	 
	 for(Integer key:fruitTree.keySet())
		 System.out.println(key+"---->"+fruitTree.get(key));
	 
 	}
	
}
