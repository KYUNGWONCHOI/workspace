package com.kh.practice.file.parent;

public interface Parent {
	boolean checkName(String file);
	void fileSave(String file, String s);
	StringBuilder fileOpen(String file);
	void fileEdit(String file, String s);

}
