package com.project1_frontend.Dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.project1_frontend.Dao.CategoryDao;
import com.project1_frontend.model.Category;

@Repository("categoryDao")
public class CategoryDaoImpl implements CategoryDao {
	
	private static List<Category> categories = new ArrayList<Category>();
	
	static
	{
		Category category =new Category();
		
		category.setId(1);
		category.setCategoryname("Tops & Tshirts");
		
		categories.add(category);
		
		category =new Category();
		category.setId(2);
		category.setCategoryname("Dresses & Jumpsuits");
		
		categories.add(category);
		
		category =new Category();
		category.setId(3);
		category.setCategoryname("Denims");
		
		categories.add(category);
		
		category =new Category();
		category.setId(4);
		category.setCategoryname("Bottom-wear");
		
		categories.add(category);
		
		category =new Category();
		category.setId(5);
		category.setCategoryname("Outer-wear");
		
		categories.add(category);
		
		category =new Category();
		category.setId(6);
		category.setCategoryname("Skirts");
		
		categories.add(category);
		
		category =new Category();
		category.setId(7);
		category.setCategoryname("Fusion-wear");
		
		categories.add(category);
		
		category =new Category();
		category.setId(8);
		category.setCategoryname("Ethnic-wear");
		
		categories.add(category);
		
		category =new Category();
		category.setId(9);
		category.setCategoryname("Footwear");
		
		categories.add(category);
		
		category =new Category();
		category.setId(10);
		category.setCategoryname("Accessories");
		
		categories.add(category);
	}

	@Override
	public List<Category> list() {
		
		return categories;
	}

}
