package com.project1_frontend.Service.Impl;

import java.util.List;
import com.project1_frontend.model.Category;

import com.project1_frontend.Dao.ProductDao;
import com.project1_frontend.Service.ProductServices;
import com.project1_frontend.model.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductServices {
	@Autowired
private ProductDao productDao;
	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}
	public Product getProduct(int id) {
		return productDao.getProduct(id);
	}
	public void deleteProduct(int id) {
		productDao.deleteProduct(id);
		
	}
	public List<Category> getAllCategories() {
		return productDao.getAllCategories();
	}
	public void saveOrUpdateProduct(Product product) {
		productDao.saveOrUpdateProduct(product);
		
	}
	

}
