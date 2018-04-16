package reviewCrud.controller;

import jdk.nashorn.internal.ir.annotations.Reference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import reviewCrud.entity.*;
import reviewCrud.repository.BookRepository;
import reviewCrud.repository.OrderDetailRepository;
import reviewCrud.repository.OrderRepository;
import reviewCrud.repository.userRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.Authenticator;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Controller

public class CartController {
    @Autowired
    userRepository userRepository;
    @Autowired
    OrderDetailRepository orderDetailRepository;
    @Autowired
    OrderRepository orderRepository;
    @Autowired
    BookRepository bookRepository;
    @RequestMapping(value = "/addToCart",method = RequestMethod.GET)
    public String addToCart(@RequestParam(name = "id") int id, Model model, HttpServletRequest request){
        HttpSession session1 = request.getSession();
        // da dang  nhap thanh cong
        try{
            String username = request.getUserPrincipal().getName();
            // ten user da login
            model.addAttribute("username", username);
        }catch (Exception e){
        }
        int bookId=Integer.valueOf( id );
        HttpSession session=request.getSession();
        List<cartItem> carts= (List<cartItem>) session.getAttribute( "carts" );
        if(carts !=null) {
             boolean isExistingId = false;
             for (cartItem item : carts) {
                 if (item.getBookEntity().getId() == bookId) {
                     item.setQuantity( (item.getQuantity() + 1) );
                     isExistingId = true;
                     break;
                 }
                }
         if (!isExistingId) {
             cartItem cartItem = new cartItem();
             BookEntity bookEntity = bookRepository.findOne( bookId );
             cartItem.setQuantity( 1 );
             cartItem.setBookEntity( bookEntity );
             carts.add( cartItem );
         }
     }
         else {
             carts=new ArrayList<>(  );
             cartItem cartItem=new cartItem();
             BookEntity bookEntity=bookRepository.findOne( bookId );
             cartItem.setQuantity( 1 );
             cartItem.setBookEntity( bookEntity );
             carts.add( cartItem );
         }
         session.setAttribute( "carts",carts );
        double totalPrice=0;
        for(cartItem cartItems:carts ){
            cartItems.setTotalPrice( cartItems.getQuantity()*cartItems.getBookEntity().getPrice() );
            totalPrice+= cartItems.getQuantity()*cartItems.getBookEntity().getPrice();
        }
        session.setAttribute( "totalprice",totalPrice );
         return "cart";
     }
        @RequestMapping(value = "/viewCart",method = RequestMethod.GET)
        public String viewCart(Model model, HttpServletRequest request){
            HttpSession session1 = request.getSession();
            // da dang  nhap thanh cong
            try{
                String username = request.getUserPrincipal().getName();
                // ten user da login
                model.addAttribute("username", username);
            }catch (Exception e){
            }
            HttpSession session=request.getSession();
            List<cartItem> CartItems= (List<cartItem>) session.getAttribute( "carts" );
            return "cart";
        }
        @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public String checkOut(Model model,HttpServletRequest request){
            HttpSession session1 = request.getSession();
            // da dang  nhap thanh cong
            try{
                String username = request.getUserPrincipal().getName();
                // ten user da login
                model.addAttribute("username", username);
            }catch (Exception e){
            }
            OrderEntity order=new OrderEntity();
            Date today = new Date(System.currentTimeMillis());
            SimpleDateFormat timeFormat= new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            String currentDateTime = timeFormat.format(today.getTime());
            order.setCreatedDate(currentDateTime);
            model.addAttribute("order",order );
            try{
                String username= request.getUserPrincipal().getName();
                UserEntity userEntity= userRepository.findUserEntitiesByUserName(username);
                order.setAddress(userEntity.getAddress());
                order.setEmail(userEntity.getEmail());
                order.setPhone(userEntity.getPhone());
                order.setUserEntity(userEntity);
                return "checkout";
            }
            catch (Exception ex){
            return "checkout";
        }
    }
    @RequestMapping(value = "/checkout",method = RequestMethod.POST)
    public String dochekOut(Model model,OrderEntity order,HttpServletRequest request){
        HttpSession session1 = request.getSession();
        // da dang  nhap thanh cong
        try{
            String username = request.getUserPrincipal().getName();
            // ten user da login
            model.addAttribute("username", username);
        }catch (Exception e){
        }
            OrderEntity orderEntity=orderRepository.save( order ) ;
            HttpSession session=request.getSession();
            List<cartItem> CartItems= (List<cartItem>) session.getAttribute( "carts" );
            double total=0;
         for (cartItem cartItems:CartItems){
           OrderDetailEntity orderDetail=new OrderDetailEntity();
           orderDetail.setQuantity( cartItems.getQuantity() );
           orderDetail.setBook( cartItems.getBookEntity() );
           double price=cartItems.getQuantity()*cartItems.getBookEntity().getPrice();
           orderDetail.setOrder(orderEntity);
           total+=price;
           orderDetail.setTotalPrice( price );
           orderDetailRepository.save(orderDetail);
            }
           orderEntity.setTotalPrice( total );
           model.addAttribute( "orderId" , orderRepository.save( orderEntity ).getId());
           session.removeAttribute( "carts" );
           return "checkout_succes";
            }
        @RequestMapping(value="xoa")
        public String xoa(Model model ,@RequestParam(name="productId") int id,HttpServletRequest request){
            HttpSession session1 = request.getSession();
            // da dang  nhap thanh cong
            try{
                String username = request.getUserPrincipal().getName();
                // ten user da login
                model.addAttribute("username", username);
            }catch (Exception e){
            }
            HttpSession session=request.getSession();
            List<cartItem> CartItems= (List<cartItem>) session.getAttribute( "carts" );
            for(int i=0; i< CartItems.size(); i++){
                if(CartItems.get(i).getBookEntity().getId()==id){
                    CartItems.remove(CartItems.get(i));
                }
            }
        return "cart";
    }
}
