package kyungwon.inheritance;

public class Customer {
	protected int customerId;
	protected String customerName;
	protected String customerGrade;
	public int bonusPoint;
	public double bonusRatio;
	protected int agentId;
	protected double saleRatio;
	
	public Customer() {
//		customerGrade = "Silver";
//		bonusRatio = 0.1;
//		System.out.println("Customer() 생성자 호출");
		initCustomer();
//		System.out.println("호출");
	}
	public Customer(int customerId, String customerName) {
//		new Customer();
		this.customerId = customerId;
		this.customerName = customerName;
		initCustomer();
//		customerGrade = "Silver";
//		bonusRatio = 0.1;
//		System.out.println("customer(int ID, String Name) 생성자 호출");
//		System.out.println("호출");
	}
	protected void initCustomer() {
		customerGrade = "Silver";
		bonusRatio = 0.1;
	}
	
	public int calcPrice(int price) {
		bonusPoint += price*bonusRatio;
		return price;
	}

//	@Override
	public String information() {
		return "Customer 아이디 : " + customerId + ", 고객 이름 : " + customerName + ", 고객 등급 : "
				+ customerGrade + ", 보너스 포인트 : " + bonusPoint + ", 보너스 율 : " + bonusRatio;
	}

	public int getCustomerID() {
		return customerId;
	}

	public void setCustomerID(int customerID) {
		this.customerId = customerID;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerGrade() {
		return customerGrade;
	}

	public void setCustomerGrade(String customerGrade) {
		this.customerGrade = customerGrade;
	}

	public int getBonusPoint() {
		return bonusPoint;
	}

	public void setBonusPoint(int bonusPoint) {
		this.bonusPoint = bonusPoint;
	}
	
	
	

}
