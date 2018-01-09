package com.project1_frontend.Dao;

import java.util.List;


import org.springframework.transaction.annotation.Transactional;

import com.project1_frontend.model.Category;
import com.project1_frontend.model.Product;


@Transactional
public interface ProductDao {
	
		List<Product> getAllProducts();
		Product getProduct(int id);
		void deleteProduct(int id);
		List<Category> getAllCategories();
		void saveOrUpdateProduct(Product product);
}

