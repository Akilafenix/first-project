package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class ProductController {
	

	
	@Autowired
	ProductDAO productdao;
	
	@Autowired
	CategoryDAO categorydao;
	
	@Autowired
	SupplierDAO supplierdao;
	
	@RequestMapping("returnproduct")
	public String returnproduct(Model model)
	{
		List<Product> productlist = productdao.getProductList();
		model.addAttribute("productlist", productlist);
		
		return "viewproduct";
		
	}
	
	@RequestMapping("viewproduct")
	public String allproduct(Model model)
	{
		List<Product> productlist = productdao.getProductList();
		model.addAttribute("productlist", productlist);
		return "viewproduct";
		
	}
	
	@RequestMapping("/productdescription/{productid}")
	public String getdescription(@PathVariable("productid")String id  ,Model model)
	{
		Product product=productdao.getProduct(id);
		model.addAttribute("product", product);
		return "productdescription";
		
	}
	@RequestMapping(value="product")
	
	public String getproduct(@ModelAttribute("product")Product product,Model model)
	{
		//productdao.addProduct(product);
		model.addAttribute("productlist",this.productdao.getProductList());
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		List<Supplier>supplist=supplierdao.getSupplierList();
		System.out.println("Supplier list in controller"+supplist);
		model.addAttribute("supplist", supplist);
		return "product";	
		
	}	
	@RequestMapping(value="saveproduct",method=RequestMethod.POST)
	public String getProductList(@Valid @ModelAttribute("product") Product product,BindingResult result,Model model)
	{
		if(result.hasErrors())
		{ 
			
			return "product";
		}
	        productdao.addProduct(product);
	        model.addAttribute("product",new Product());
	        model.addAttribute("productlist",this.productdao.getProductList());
	        model.addAttribute("catlist",this.categorydao.getCategoryList());
	        model.addAttribute("supplist", this.supplierdao.getSupplierList());
	        MultipartFile image = product.getPimage();
	        Path path=Paths.get("C:\\Users\\AHILA\\Desktop\\e-commerce\\src\\main\\webapp\\resources\\"+product.getProductid()+".jpg");
	        try 
	        {
				image.transferTo(new File(path.toString()));
			} 
	        catch (IllegalStateException e)
	        {

				e.printStackTrace();
			} 
	        catch (IOException e) 
	        {
		
				e.printStackTrace();
			}
	        return "product";
	
	}
	
	@RequestMapping("/deleteproduct")
	public String deleteproduct(@RequestParam("pid")String id,Model model)
	{
		productdao.deleteProduct(id);
		model.addAttribute("product",new Product());
		model.addAttribute("productlist",this.productdao.getProductList());
	    model.addAttribute("catlist",this.categorydao.getCategoryList());
	    model.addAttribute("supplist", this.supplierdao.getSupplierList());
		return "product";
		
	}
	
	@RequestMapping("/editproduct")
	public String geteditpage(@RequestParam("pid")String productid,Model model)
	{
		Product product=productdao.getProduct(productid);
		model.addAttribute("productdata",product);
		model.addAttribute("product1",new Product());
		
		return "Editproduct";
		
	}

}
	
	


