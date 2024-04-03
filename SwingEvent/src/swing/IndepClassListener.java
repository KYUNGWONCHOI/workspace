package swing;

import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

public class IndepClassListener extends JFrame { // JFrame 상속
	public IndepClassListener() {
		setTitle("Action 이벤트 리스터 예제"); // Frame 의 타이틀
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		Container c = getContentPane();
		// Container is a component that can contain other AWT components.

		c.setLayout(new FlowLayout());
		JButton btn = new JButton("Action");
		c.add(btn);

		btn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JButton b = (JButton) e.getSource();
				if (b.getText().equals("Action"))
					b.setText("액션");
				else {
					b.setText("Action");
					setTitle(b.getText());
				}
			}
		});

		setSize(300, 300);
		setVisible(true);

	}

	public static void main(String[] args) {
		new IndepClassListener();
	}
}