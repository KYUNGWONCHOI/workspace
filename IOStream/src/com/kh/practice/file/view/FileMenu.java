package com.kh.practice.file.view;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Scanner;

import com.kh.practice.file.controller.FileController;
import com.kh.practice.file.model.dao.FileDAO;
import com.kh.practice.file.parent.Parent;

public class FileMenu {
	FileController fc = new FileController();
	FileDAO fd = new FileDAO();

	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	Scanner sc = new Scanner(System.in);

	public void mainMenu() {
		System.out.println("=======Note=======");
		int selectNum = 0;
		try {
			selectNum = System.in.read();
		} catch (IOException e) {
			e.printStackTrace();
		}
		while (selectNum != 0) {
			switch (selectNum) {
			case 1:
				fileSave();
				break;
			case 2:
				fileOpen();
				break;
			case 3:
				fileEdit();
				break;
			case 9:
				System.out.println("프로그램을 종료합니다");
				return;
			default:
				System.out.println("잘못 입력하셨습니다. 다시 입력해 주세요");
				break;
			}
		}
	}

	public void fileSave() {
		StringBuilder sb = new StringBuilder();
		String filePath = "C:\\workspace\\IOStream\\src\\filepath";
		FileWriter writer;
		System.out.println("파일에 저장할 내용을 입력하세요.");
		System.out.println("Exit 을 입력하면 종료됩니다 : ");
		try {
			while (true) {
				if (!sb.equals("Exit")) {
					break;

				} else {
					sb.append(br.readLine());
				}
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

//		try {
//			System.out.println("파일 이름을 입력하세요 : ");
//			File file = new File(filePath + fileName);
//			if (file.exists()) {
//				System.out.println("이미 존재하는 파일입니다.");
//				System.out.print("덮어 쓰겠습니까? (y/n)");
//				char result = (char) System.in.read();
//				while(true) {
//					String fileName = sc.nextLine();
//					if ((result == 'y') || (result == 'Y')) {
//					fc.fileSave(filePath, fileName);
//				} else if ((result == 'n') || (result == 'N')) {
//					System.out.println("다시 입력해주세요");
//				}
//				}
//			} else {
//
//				writer = new FileWriter(file);
//				writer.write(sb.toString());
//			}
//		} catch (IOException e) {
//			e.printStackTrace();
//		}

	}

	public StringBuilder fileOpen() {
		return null;
	}

	public void fileEdit() {

	}

}
