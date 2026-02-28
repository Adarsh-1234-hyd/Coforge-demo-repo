package com.coforge.Day5;

import java.util.LinkedList;

public class Demoonlinklist {
public static void main(String[] args) {
	
	LinkedList<Integer>llist = new LinkedList<Integer>();
	llist.add(12);
	llist.add(22);
	llist.add(32);
	llist.add(42);
	
	System.out.println(llist);
	
	llist.addFirst(34);
	llist.addLast(43);
	System.out.println("AFETR ADDING");
	System.out.println(llist);
	
}
}
