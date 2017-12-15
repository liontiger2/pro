package com.entity;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

public class Cart {
	public Map<Integer,CartItem>  items = new HashMap<Integer,CartItem>() ;
	
	public Map<Integer,CartItem> getItems(){
		return items;
	}
	
	public void setItems(Map<Integer,CartItem> items){
		this.items = items;
	}
	
	public void addToCart(Product p){
		if(items.containsKey(p.getId())){
			CartItem ci = items.get(p.getId());
			ci.setCount(ci.getCount()+1);
		}else{
			CartItem ci = new CartItem();
			ci.setProduct(p);
			ci.setCount(1);
			items.put(p.getId(), ci);
		}
	}
}
