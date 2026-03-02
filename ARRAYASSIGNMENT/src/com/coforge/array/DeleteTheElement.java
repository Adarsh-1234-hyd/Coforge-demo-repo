package com.coforge.array;
import java.util.Scanner;

public class DeleteTheElement {

    public static int[] deleteAtPosition(int[] arr, int position) {
        if (position < 0 || position >= arr.length) {
            System.out.println("Invalid position. No deletion performed.");
            return arr; // Return original array if invalid
        }

        int[] newArr = new int[arr.length - 1];

        // Copy elements before the position
        for (int i = 0; i < position; i++) {
            newArr[i] = arr[i];
        }

        // Copy elements after the position
        for (int i = position; i < newArr.length; i++) {
            newArr[i] = arr[i + 1];
        }

        return newArr;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Pre-existing array
        int[] arr = {10, 20, 30, 40, 50};
        int Size = 5;

        System.out.print("Original array: ");
        for (int num : arr) {
            System.out.print(num + " ");
        }
        System.out.println();

        // Take position from user
        System.out.print("Enter position to delete from 0 to" +Size+"-->");
        int pos = sc.nextInt();

        // Delete element
        int[] updatedArr = deleteAtPosition(arr, pos);

        System.out.print("Array after deletion: ");
        for (int num : updatedArr) {
            System.out.print(num + " ");
        }
        System.out.println();

        sc.close();
    }
}
