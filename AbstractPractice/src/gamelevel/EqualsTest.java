package gamelevel;

public class EqualsTest {
	public static void main(String[] args) {
		int a, b;
		a = 10;
		b = 10;
		String s1 = "Hello";
		String s2 = "Hello";
		
		int aa;
		
		if(s1.equals(s2)) System.out.println("true");
		else System.out.println("false");
		
		System.out.println(a);
		System.out.println(b);
		System.out.println(a==b);
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(s1==s2);
		System.out.println("==================");
		System.out.println(s1.hashCode());
		System.out.println(s2.hashCode());
		
		
		System.out.println("==================");
		
		Integer test1 = new Integer(10);
		Integer test2 = new Integer(10);
		Integer test3 = 10;
		System.out.println(test1);
		
		System.out.println(test1==test2);
		System.out.println(test1.equals(test2));
		
		System.out.println(test1==test3);
		System.out.println(test1.equals(test3));
		
	}

}
