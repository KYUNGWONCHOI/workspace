package kyungwon.inheritance;

public class VIPcustomer extends Customer {

	public VIPcustomer() {
//		super(); // 생략되어 있음
//		customerGrade = "VIP";
//		bonusRatio = 0.2;
//		saleRatio = 0.1;
//		System.out.println("VIPcustomer() 생성자 호출");
//		System.out.println("호출");
		initCustomer();
	}

	public VIPcustomer(int customerId, String customerName, int agentId) {
		super(customerId, customerName);
		initCustomer();
//		new VIPcustomer();
//		customerGrade = "VIP";
//		bonusRatio = 0.2;
//		saleRatio = 0.1;
		this.agentId = agentId;
//		System.out.println("VIPcustomer(ID, Name, Id) 호출");
//		System.out.println("호출");
	}
	
	
//	protected void initVipCustomer(){
//		customerGrade = "VIP";
//		bonusRatio = 0.2;
//		saleRatio = 0.1;
//	}

//	@Override
	protected void initCustomer() {
		customerGrade = "VIP";
		bonusRatio = 0.2;
		saleRatio = 0.1;
		// TODO Auto-generated method stub
//		super.initCustomer();
	}

	public int calcPrice(int price) {
		bonusPoint += price * bonusRatio;
		return price - (int) (price * saleRatio);
	}
	

	public int getAgentID() {
		return agentId;
	}

//	@Override
//	public int calcPrice(int price) {
//		bonusPoint += price * bonusRatio;
//		price -= (int)(price * saleRatio);
//		return super.calcPrice(price);
//	}

	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}

	// @Override
	public String information() {
		return "VIPcustomer 아이디" + customerId + ", 고객 이름 : " + customerName + ", 고객 등급 : " + customerGrade
				+ ", 보너스 포인트 : " + bonusPoint + ", 보너스 율 : " + bonusRatio + ", 할인 율 : " + saleRatio + ", 직원 아이디 : "
				+ agentId;
	}

}
