package com.ecommerce.category.dao;

import com.ecommerce.category.domain.Category;
import com.ecommerce.category.domain.ProductCategory;

import java.util.List;


public interface CategoryDao {
	
	public void changeCategoryName(int categoryId, String categoryName);

	public List<Category> findAllCategory();

	public void deleteCategory(int categoryId);
	
	public void createCategory(String categoryName,int parent);

	public List<ProductCategory> findAllProductCategory();

	/**
	 * Find Category by Name
	 * @param name
	 * @return
	 */
    Category findCategoryByName(String name);
}