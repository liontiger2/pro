package com.Controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.Cart;
import com.entity.CartItem;
import com.entity.Product;
import com.entity.User;
import com.service.ProductServiceImpl;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Resource
	private ProductServiceImpl productservice;
	
	@RequestMapping(value="/single",method=RequestMethod.GET)
	public String productController(HttpSession session,@RequestParam("id") String id){
		System.out.println(11111);
		Product p = productservice.productService(new Integer(id));
		session.setAttribute("p",p);
			
		return "single-product";
	}
	
	@RequestMapping(value="/name",method=RequestMethod.GET)
	public String getProductName(int id){
		Product product = productservice.productService(id);
		return product.getName();
	}
	
	@RequestMapping(value="/price",method=RequestMethod.GET)
	public float getProductPrice(int id){
		Product product = productservice.productService(id);
		return product.getPrice();
	}
	
	@RequestMapping(value="/addtocart",method=RequestMethod.GET)
	public String addToCartController(HttpSession session,@RequestParam("id")String strid,@RequestParam("count")String strcount){
		int id = Integer.parseInt(strid);
		int count = Integer.parseInt(strcount);
		Product product = productservice.addToCartService(id);
		User user = (User) session.getAttribute("user");
		
		if(user != null){
			if(session.getAttribute("cart")==null){
				Cart cart = new Cart();
				cart.addToCart(product);
				session.setAttribute("cart", cart);
				Iterator i = cart.items.values().iterator();
				List<CartItem> list = new ArrayList<CartItem>();
				while(i.hasNext()){
					CartItem ci = (CartItem) i.next();
					list.add(ci);
				}
				session.setAttribute("cartlist", list);
			}else{
				Cart cart = (Cart) session.getAttribute("cart");
				cart.addToCart(product);
				session.setAttribute("cart", cart);
				Iterator i = cart.items.values().iterator();
				List<CartItem> list = new ArrayList<CartItem>();
				while(i.hasNext()){
					CartItem ci = (CartItem) i.next();
					list.add(ci);
				}
				session.setAttribute("cartlist", list);
			}
			return "index";
		}else{
			return "login";
		}
	}
	
	@RequestMapping(value="/deletepro",method=RequestMethod.GET)
	public String addProductCount(HttpSession session,@RequestParam("id")String strid){
		int id = Integer.parseInt(strid);
		List<CartItem> list = (List) session.getAttribute("cartlist");
		for(CartItem c:list){
			if(c.getProduct().getId()==id){
				list.remove(c);
			}
		}
		session.setAttribute("cartlist", list);	
		return "cart";
	}
}
