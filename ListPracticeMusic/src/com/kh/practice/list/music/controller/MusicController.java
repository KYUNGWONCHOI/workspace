package com.kh.practice.list.music.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import com.kh.practice.list.music.model.compare.AscTitle;
import com.kh.practice.list.music.model.vo.Music;

public class MusicController {
	AscTitle ascS = null;
	Scanner sc = new Scanner(System.in);
	List<Music> musicList = new ArrayList<Music>();

	public int addList(Music music) {
		int result = (musicList.add(music) ? 1 : 0);
		return result;
	}

	public int addAtZero(Music music) {
		musicList.add(0, music);
		int result = ((musicList.get(0) == music) ? 1 : 0);
		return result;
	}

	public List<Music> printAll() {
		List<Music> list = null;
		Iterator<Music> iterator = musicList.iterator();
		if (iterator.hasNext()) {
			Music listM = iterator.next();
			list.add(listM);
		}
		return list;
	}

	public Music searchMusic(String title) {
		Music searchM = null;
		Iterator<Music> iterator = musicList.iterator();
		if (iterator.hasNext() && iterator.next().equals(title)) {
			searchM = iterator.next();
		}
		return searchM;
	}

	public Music removeMusic(String title) {
		Music tempM = null;
		List<Music> tempList = null;
		Iterator<Music> iterator = musicList.iterator();
		if (!(iterator.hasNext() && iterator.next().equals(title))) {
			tempList.add(iterator.next());
			tempM = iterator.next();
		}
		musicList = tempList;
		return tempM;
	}

	public Music setMusic(String title, String singer) {
		Music setM = null;
		Iterator<Music> iterator = musicList.iterator();
		if (iterator.hasNext()) {
			setM = iterator.next();
			if (setM.getTitle().equals(title) && setM.getSinger().equals(singer)) {
				System.out.print("변경할 제목 입력 : ");
				String setT = sc.nextLine();
				System.out.print("변경할 가수 입력 : ");
				String setS = sc.nextLine();
				setM.setTitle(setT);
				setM.setSinger(setS);
				musicList.add(setM);
				return setM;
			} else {
				System.out.println("수정할 곡이 없습니다.");
			}
		}
		return null;
	}

	public int ascTitle() {
		int result = -1;
		if (musicList != null) {
			Collections.sort(musicList, Comparator.comparing(Music::getTitle));
		}
		return result;
	}
//	int result = -1;
//	if (bookList != null) {
//		Collections.sort(bookList, Comparator.comparing(Book::getTitle));
//		result = 1;
//	} else {
//		result = 0;
//	}
//	return result;
//	

	public int desSinger() {
		Music m1 = null;
		Music m2 = null;
		
		return ascS.compare(null, null);
	}
}
