//package com.mindtree.zomato.controller;
//
//import java.time.LocalTime;
//import java.time.temporal.ChronoUnit;
//import java.util.Date;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.scheduling.annotation.Scheduled;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.mindtree.zomato.entity.Cart;
//import com.mindtree.zomato.entity.CartItems;
//import com.mindtree.zomato.repository.OrderItemsRepository;
//import com.mindtree.zomato.serviceimpl.CartServiceImpl;
//import com.mindtree.zomato.serviceimpl.OrderItemServiceImpl;
//import com.mindtree.zomato.serviceimpl.UserServiceImpl;
//
//@Controller
//public class CronController {
//
//	@Autowired
//	private OrderItemServiceImpl orderservice;
//
//	@Autowired
//	private OrderItemsRepository repo;
//
//	@Autowired
//	private UserServiceImpl userservice;
//
//	@Autowired
//	private CartServiceImpl service;
//
//	@RequestMapping("/service")
//	@Scheduled(fixedRate = 50000)
//	public void cartScheduler() {
//		List<CartItems> clist = service.getallCartItems();
//		List<Cart> cart = service.getAllCart();
//
//		for (CartItems citem : clist) {
//			if (citem.getTime().compareTo(citem.getTime().plusMinutes(2)) < 0) {
//				int k = citem.getCart().getCartId();
//				service.deletebyId(citem.getFoodId());
//				for (Cart c1 : cart) {
//					if (c1.getCartId() == k) {
//						c1.setFood(null);
//						c1.setUser(null);
//						service.addcart(c1);
//						service.deletebyId(c1.getCartId());
//					}
//				}
//
//			}
//		}
//
//	}
//
//}
