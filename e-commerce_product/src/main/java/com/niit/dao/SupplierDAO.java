package com.niit.dao;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierDAO {
	
	public void addsupplier(Supplier supplier);
	
	public List<Supplier> getSupplierList();

}
