package com.service;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.dao.ProductDaoImpl;
import com.entity.Product;

@Service
public class ProductServiceImpl {
	@Resource
	private ProductDaoImpl productDao;
	
	public Product productService(int id){
		return productDao.productdao(id);
	}
	
	public Product addToCartService(int id){
		return productDao.addToCartDao(id);
	}
}