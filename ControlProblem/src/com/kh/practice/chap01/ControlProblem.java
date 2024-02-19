package com.kh.practice.chap01;

public class ControlProblem {
	public void gugu() {
		for (int j = 1; j <= 9; j++) {
			for (int i = 2; i <= 9; i++) {
				System.out.printf("%d*%d=%d\t", i, j, i * j);
			}
			System.out.println("");
		}
	}

	public void star() {
		for (int i = 0; i <= 6; i++) {
			if (i <= 3) {
				for (int j = 0; j <= 14 - i; j++) {
					System.out.print("-");
				}
				for (int n = 3; n <= 3 + (i * 2); n++) {
					System.out.print("*");
				}
				System.out.println("");
			} else if (i > 3) {
				for (int j = 0; j <= 8 + i; j++) {
					System.out.print("-");
				}
				for (int n = 3; n <= 15 - (i * 2); n++) {
					System.out.print("*");
				}
				System.out.println("");
			}
		}
	}

}
