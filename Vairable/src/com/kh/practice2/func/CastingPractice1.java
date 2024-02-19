package com.kh.practice2.func;

public class CastingPractice1 {
	public static int asci(String a) {
		char[] ch1 = new char[a.length()];
		for(int i=0; i<a.length(); i++) {
			ch1[i] = a.charAt(i);
		}
		return (int)ch1[0];
	}
}
