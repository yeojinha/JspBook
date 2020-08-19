package dao;

import java.util.ArrayList;
import java.util.List;

import dto.Product;

public class ProductRepository {
 private List<Product> listOfProducts=new ArrayList<>();
 
 public ProductRepository() {
	 Product phone= new Product("P1234","iPhone 6s",800000);
	 phone.setDescription("4.7-inch, 1334X750 Renia HD display, 8-megapixel iSight Cmera");
	 phone.setCategory("Smart Phone");
	 phone.setManufacturer("Apple");
	 phone.setUnitsInStock(1000);
	 phone.setCondition("New");
	 
	 Product noteBook= new Product("P1235","LG PC ±×·¥",1500000);
	 noteBook.setDescription("13.3-inch, IPS LED HD display, 5rd Generation Intel Core processors");
	 noteBook.setCategory("NoteBook");
	 noteBook.setManufacturer("LG");
	 noteBook.setUnitsInStock(1000);
	 noteBook.setCondition("Refurbished");

	 Product tablet= new Product("P1236","Galaxy Tab S",900000);
	 tablet.setDescription("212.8*125.6*6.mm, Super AMOLED display, Octa-Core processor");
	 tablet.setCategory("Tablet");
	 tablet.setManufacturer("Samsung");
	 tablet.setUnitsInStock(1000);
	 tablet.setCondition("Old");
	 
	 listOfProducts.add(phone);
	 listOfProducts.add(tablet);
	 listOfProducts.add(noteBook);
	 
 }

public List<Product> getAllProducts() {
	return listOfProducts;
}

public void setListOfProducts(List<Product> listOfProducts) {
	this.listOfProducts = listOfProducts;
}
}
