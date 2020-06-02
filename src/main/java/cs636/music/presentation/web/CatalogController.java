package cs636.music.presentation.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import cs636.music.domain.Cart;
import cs636.music.domain.Product;
import cs636.music.service.CatalogService;
import cs636.music.service.data.CartItemData;

// Stub for CatalogController (rename to MusicController if no SalesController supplied)
@Controller
@SessionAttributes({"user","cart"})
public class CatalogController {

	@Autowired
	private CatalogService catalogService;
	// String constants for URLs
	private static final String WELCOME_URL = "/welcome.html";
	private static final String WELCOME_VIEW = "/Welcome1";
	private static final String USER_URL = "/userController/";
	private static final String USER_JSP_DIR = "/user/";

	@RequestMapping(WELCOME_URL)
	public String handleWelcome() {
		return WELCOME_VIEW;
	}
	
	
	@RequestMapping(USER_URL+"")
	public String CatalogDisplay() {
		return "";
	}
	
	@RequestMapping(USER_URL+"cart.html")
	public String cart(Model model,@RequestParam(value="productCode",required = false) 
	String productCode, @RequestParam(value="productQuantity",required = false) Integer productQuantity
			,HttpServletRequest request) throws ServletException {
		
		Cart cart = null;
		Product product = new Product();
		
		if(productCode!=null) {
		try {
			 product = catalogService.getProductByCode(productCode);
			 
		}catch(Exception e) {
			throw new ServletException(e);
		}
		long productId = product.getId();
		model.addAttribute("productId", productId);
		model.addAttribute("productCode", productCode);
		model.addAttribute("productQuantity", productQuantity);
		Set<CartItemData> setofcartdata = new HashSet<CartItemData>();
		
		try {
			cart =(Cart)request.getSession().getAttribute("cart") ;
			if(checkCart(request)==false){
			cart = catalogService.createCart();
			}
			catalogService.addItemtoCart(productId, cart, productQuantity);
			setofcartdata = catalogService.getCartInfo(cart);
			if(checkCart(request)==false){
			request.getSession().setAttribute("cart", cart);
			}
		}catch(Exception e) {
			throw new ServletException(e);
		}	
		
		model.addAttribute("allProducts", setofcartdata);
		}
		
		return USER_JSP_DIR+"cart";
	}
	
	private boolean checkCart(HttpServletRequest request) throws IOException {
		 HttpSession session = request.getSession();
			Cart cart = (Cart) session.getAttribute("cart");
			return (cart != null);
		}
	
	@RequestMapping(USER_URL+"EndNode")
	public String sCart(Model model,HttpServletRequest request){
		String url=USER_JSP_DIR+"cart";
		ArrayList<Long> arr = new ArrayList<Long>();
		ArrayList<Integer> bb = new ArrayList<Integer>();
		int i=0;
		
		Set<CartItemData> item = new HashSet<CartItemData>();
		Cart cart = (Cart) request.getSession().getAttribute("cart");
		try{
			item = catalogService.getCartInfo(cart);
			for(CartItemData l:item){
				arr.add(l.getProductId());
				bb.add(l.getQuantity());
			}
			model.addAttribute("productId", arr);
			model.addAttribute("productQuantity", bb);
			//url=cart(model,arr.get(0).toString(),bb.get(0),request);
			url=USER_JSP_DIR+"cart";
		}
		catch(Exception e){}
		return url;
	}
	
}






   