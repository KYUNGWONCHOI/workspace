package kyungwon.inheritance;

public class CustomerTest {
	public static void main(String[] args) {
		Customer cLee = new Customer();
		cLee.setCustomerName("Lee");
		cLee.setCustomerID(1001);
		cLee.setBonusPoint(1000);
		System.out.println(cLee.information());
		
		Customer cChoi = new VIPcustomer();
		cChoi.setCustomerName("Choi");
		cChoi.setCustomerID(777);
		cChoi.setBonusPoint(1000);
		System.out.println(cChoi.information());
		
		Customer cJo = new VIPcustomer(778, "MJ", 1);
		cJo.setBonusPoint(1000);
		System.out.println(cJo.information());
		
		Customer cP = new GoldCustomer(123, "Park");
		cP.setBonusPoint(1000);
		System.out.println(cP.information());
		
		int price = 10000;
		
		System.out.println(cLee.getCustomerName()+"님이 내실 금액은 : "+cLee.calcPrice(price)+"입니다.");
		System.out.println(cChoi.getCustomerName()+"님이 내실 금액은 : "+cChoi.calcPrice(price)+"입니다.");
		System.out.println(cJo.getCustomerName()+"님이 내실 금액은 : "+cJo.calcPrice(price)+"입니다.");
		System.out.println(cP.getCustomerName()+"님이 내실 금액은 : "+cP.calcPrice(price)+"입니다.");
		
		System.out.println(cLee.information());
		System.out.println(cChoi.information());
		System.out.println(cJo.information());
		System.out.println(cP.information());
		
		if(cP instanceof GoldCustomer) {
			System.out.println("1");
		}
	}

}
