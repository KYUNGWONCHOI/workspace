package swing;

import java.awt.Color;
import java.awt.Container;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.*;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.text.AbstractDocument.Content;
import javax.swing.*;

public class KeyCodeEx extends JFrame{
	private JLabel la = new JLabel();
	Container c = getContentPane();
	
	public KeyCodeEx() {
		setTitle("KeyCode");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		c.addKeyListener(new MyKeyListener());
		c.add(la);
		
		
		setSize(300, 300);
		setVisible(true);
		
		c.setFocusable(true); //컴포넌트, 응용프로그램이 포커스를 받을 수 있도록 설정
		c.requestFocus(); // 컴포넌트에 포커스 강제 지정
	}
	
	class MyKeyListener extends KeyAdapter{
		public void keyPressed(KeyEvent e) {
			la.setText(e.getKeyText(e.getKeyCode()));
			
			if(e.getKeyChar() == '%')
				c.setBackground(Color.YELLOW);
			else if(e.getKeyCode() == KeyEvent.VK_F1)
				c.setBackground(Color.GREEN);
		}
		
	}
	public static void main(String[] args) {
		new KeyCodeEx();
	}

}
