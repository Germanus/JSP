package my.ilya;

import javax.servlet.http.*;
import java.util.ArrayList;
import java.util.List;

public class BookShop {

	private String quantity = "5";
	private List<String> books = new ArrayList<String>();
	private List<String> addedBooks = new ArrayList<String>();
	
	public BookShop(){
		addedBooks.add("Book 1");
		books.add("Book 1");
		books.add("Book 2");
		books.add("Book 3");
		books.add("Book 4");
		books.add("Book 5");
	}
	
	public int sizeOfBooks(){
		return books.size();
	}

	public void processRequest(HttpServletRequest request) {
	
	}
	
	public List<String> getBooks(){
		return books;
	}
	
	public List<String> getAddedBooks(){
		return addedBooks;
	}
	
	public String getQuantity(){
		return quantity;
	}
	
	public void setQuantity(String quantity){
		this.quantity = quantity;
	}

}
