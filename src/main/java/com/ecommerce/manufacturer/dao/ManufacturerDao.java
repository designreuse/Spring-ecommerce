package com.ecommerce.manufacturer.dao;

import java.util.List;

import com.ecommerce.product.doimain.Manufacturer;
import com.ecommerce.product.doimain.Tax;

public interface ManufacturerDao {

	public List<Manufacturer> fintAllManufacturers();
	/**
	 * Process add new Manufacturer
	 * Manufacturer will be visible in ManageProduct Tab(General)
	 * @param manufacturer
	 */
	public void addNewManufacturer(Manufacturer manufacturer);

	/**
	 * Getting manufacturer by Id
	 * @param id
	 * @return Return Manufacturer
	 */
	public Manufacturer getManufacturerById(Long id);

	/**
	 * Remove Manufacturer
	 * @param manufacturer
	 */
	public void removeManufacturer(Manufacturer manufacturer);
}