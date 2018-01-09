package com.project1_frontend.Service;

import java.util.List;

import com.project1_frontend.model.Category;
import com.project1_frontend.model.Product;

public interface ProductServices {
	List<Product> getAllProducts();
	Product getProduct(int id);
	void deleteProduct(int id);
	List<Category> getAllCategories();
	void saveOrUpdateProduct(Product product);
	}


