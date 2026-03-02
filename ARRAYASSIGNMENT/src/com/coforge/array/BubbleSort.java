package com.coforge.array;
import java.util.Iterator;
public class BubbleSort {
     public static void printarr(int arr[]) {
    	 for(int i = 0;i<arr.length;i++) {
    		 System.out.print(arr[i]+" ");
    	 }
    	 System.out.println();
     }
     // in ASCENDING ORDER
     public static void main(String[] args) {
    	System.out.println("ARRAY BEFORE SORTING");
//		int arr[]= {3,5,7,4,5};
//		printarr(arr);
//		for(int i = 0;i<arr.length-1;i++){
//			for(int j = 0;j<arr.length-i-1;j++){
//				if (arr[j]>arr[j+1]) {
//					int temp = arr[j];
//					arr[j]=arr[j+1];
//					arr[j+1]=temp;
//				}
//			}
//		}
//		System.out.println("ARRAY AFTER APPLYING BUBBLE SORT");
//		printarr(arr);
    	
    	//IN DESCENDING ORDER
    	int arr[]= {3,5,7,4,5};
		printarr(arr);
		for(int i = 0;i<arr.length-1;i++){
			for(int j = 0;j<arr.length-i-1;j++){
				if (arr[j]<arr[j+1]) {
					int temp = arr[j];
					arr[j]=arr[j+1];
					arr[j+1]=temp;
				}
			}
		}
		System.out.println("ARRAY AFTER APPLYING BUBBLE SORT");
		printarr(arr);

	}
}
