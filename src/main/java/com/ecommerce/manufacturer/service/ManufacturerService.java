package com.ecommerce.manufacturer.service;

import com.ecommerce.product.doimain.Manufacturer;

import java.util.List;

public interface ManufacturerService {

	
	public List<Manufacturer> fintAllManufacturers();
	public List<String> gedAllNamedManufacturers();

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
