package gamelevel;

public class BeginnerLevel extends PlayerLevel{

	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("Run");
	}

	@Override
	public void jump() {
		// TODO Auto-generated method stub
		System.out.println("Can't jump");
	}

	@Override
	public void turn() {
		// TODO Auto-generated method stub
		System.out.println("Can't turn");
	}

	@Override
	public void showLevelMessage() {
		// TODO Auto-generated method stub
		System.out.println("Begginer Level");
	}
	

}
