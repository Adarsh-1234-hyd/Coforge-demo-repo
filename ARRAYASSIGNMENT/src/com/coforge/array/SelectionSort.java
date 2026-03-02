package com.coforge.array;

import java.util.Iterator;

public class SelectionSort {
   public static void printArr(int[]arr){
	   for(int i = 0; i<arr.length;i++){
		   System.out.print(arr[i]+" ");
	   }
	   System.out.println();
   }
   public static void main(String[] args) {
	   
	   System.out.println("ARRAY BEFORE SWAPPING");
	 int arr[] = {12,3,4,5};
	 printArr(arr);
	 for(int i = 0;i<arr.length-1;i++){
		 int smallest = i;
		 for(int j = i+1; j<arr.length;j++) {
			 if(arr[smallest]>arr[j]) {
				 smallest=j;
			 }
			 int temp = arr[smallest];
			 arr[smallest]=arr[i];
			 arr[i]=temp;
		 }
	 }
	 System.out.println("ARRAY AFTER SELECTION SORT");
	 printArr(arr);
}
 
}
