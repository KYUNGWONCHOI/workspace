package kyungwon.inheritance;

public class GoldCustomer extends Customer{
	
	public GoldCustomer() {
		initCustomer();
	}
	
	public GoldCustomer(int customerId, String customerName) {
		super(customerId, customerName);
//		this.agentId = agentId;
		initCustomer();
	}

	@Override
	protected void initCustomer() {
		customerGrade = "Gold";
		bonusRatio = 0.15;
		saleRatio = 0.05;
		// TODO Auto-generated method stub
//		super.initCustomer();
	}

	@Override
	public int calcPrice(int price) {
		bonusPoint += price*bonusRatio;
		return price -= (price*saleRatio);
		// TODO Auto-generated method stub
//		return super.calcPrice(price);
	}
	
	public String information() {
		return "VIPcustomer 아이디" + customerId + ", 고객 이름 : " + customerName + ", 고객 등급 : " + customerGrade
				+ ", 보너스 포인트 : " + bonusPoint + ", 보너스 율 : " + bonusRatio + ", 할인 율 : " + saleRatio;	
	}
}
