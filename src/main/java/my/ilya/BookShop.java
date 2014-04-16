package my.ilya;

import javax.servlet.http.*;

public class BookShop {

	private String quantity = "5";

	public void processRequest(HttpServletRequest request) {
	
	}
	
	public String getQuantity(){
		return quantity;
	}
	
	public void setQuantity(String quantity){
		this.quantity = quantity;
	}

}