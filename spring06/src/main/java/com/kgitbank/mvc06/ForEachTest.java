package com.kgitbank.mvc06;

public class ForEachTest {

	public static void main(String[] args) {
		int [] list = {1, 2, 3, 4, 5};
		
		for (int x : list) {
			System.out.println(x);
		}
		
		for (int i = 0; i < list.length; i++) {
			System.out.println(list[i]);
		}
		
		
	}
	
}
