package swing;

import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.*;

public class MouseListenerEx extends JFrame{
	private JLabel la = new JLabel("Hello");
	private JLabel jl = new JLabel("hihiihhiih");
	
	public MouseListenerEx() {
		setTitle("Mouse Listener");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		
		c.addMouseListener(new MyMouseListener());
		
		c.setLayout(null);
		la.setSize(100,10);
		la.setLocation(30,30);
		c.add(la);
		
		jl.setSize(30, 10);
		jl.setLocation(100,100);
		c.add(jl);
		
		setSize(300, 300);
		setVisible(true);
		
	}
	
	class MyMouseListener extends MouseAdapter{

		public void mousePressed(MouseEvent e) {
			int x = e.getX();
			int y = e.getY();
			la.setLocation(x, y);
			
		}
	}
	
	public static void main(String[] args) {
		new MouseListenerEx();
	}

}
