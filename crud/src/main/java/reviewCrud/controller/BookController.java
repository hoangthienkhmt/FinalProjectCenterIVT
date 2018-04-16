
package reviewCrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import reviewCrud.entity.BookEntity;
import reviewCrud.entity.CategoryEntity;
import reviewCrud.entity.ViewEntity;
import reviewCrud.repository.BookRepository;
import reviewCrud.repository.Bookrepos;
import reviewCrud.repository.CategoryRepository;
import reviewCrud.repository.ViewRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value = "/")
public class BookController {
    @Autowired
    BookRepository bookRepository;
    @Autowired
    CategoryRepository categoryRepository;
    @Autowired
    ViewRepository viewRepository;
    @Autowired
    Bookrepos bookrepos;
    @RequestMapping(method = GET)
    public String showBooks(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
         // da dang  nhap thanh cong
        try{
            String username = request.getUserPrincipal().getName();
            // ten user da login
            model.addAttribute("username", username);
        }catch (Exception e){
        }
        List<CategoryEntity> categoryEntityList=(List<CategoryEntity>) categoryRepository.findAll();
        model.addAttribute("categoryEntityList",categoryEntityList);
        List<BookEntity> book= (List<BookEntity>) bookrepos.getBooks(1);
       model.addAttribute("book",book);
        List<ViewEntity> test = viewRepository.findTop3ByOrderByCountDesc();
        List<BookEntity> productList = new ArrayList<>();
        for(ViewEntity viewEntity : test) {
            productList.add(viewEntity.getBookEntity());
        }
        model.addAttribute("bookTop",productList);
        return "index";
    }
    @RequestMapping(value = "/book/{page}", method = POST,produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String getData(@PathVariable int page) {
        String result = "";
        List<BookEntity> data = bookrepos.getBooks(page);
        for (BookEntity book: data) {
            result+="<div class=\"col-md-4\">\n" +
                    "\t\t\t<a href=\"/single?id="+ book.getId()+"\"><img class=\"img-responsive chain\" src=\"/resources/images/"+book.getImg() +"\" alt=\" \" /></a>\n" +
                    "\t\t\t<span class=\"star\"> </span>\n" +
                    "\t\t\t<div class=\"\">\n" +
                    "\t\t\t\t<a href=\"/single?id="+book.getId()+"\"style=\"text-decoration: none;\"><h5>"+book.getName()+"</h5></a>\n" +
                    "\t\t\t\t<div class=\"star-price\">\n" +
                    "\t\t\t\t\t<div class=\"\">\n" +
                    "\t\t\t\t\t\t<span class=\"actual\">"+book.getPrice()+"$</span>\n" +
                    "\t\t\t\t\t\t<span class=\"rating\">\n" +
                    "\t\t\t\t\t\t\t\t\t        <input type=\"radio\" class=\"rating-input\" id=\"rating-input-1-5\" name=\"rating-input-1\">\n" +
                    "\t\t\t\t\t\t\t\t\t        <label for=\"rating-input-1-5\" class=\"rating-star1\"> </label>\n" +
                    "\t\t\t\t\t\t\t\t\t        <input type=\"radio\" class=\"rating-input\" id=\"rating-input-1-4\" name=\"rating-input-1\">\n" +
                    "\t\t\t\t\t\t\t\t\t        <label for=\"rating-input-1-4\" class=\"rating-star1\"> </label>\n" +
                    "\t\t\t\t\t\t\t\t\t        <input type=\"radio\" class=\"rating-input\" id=\"rating-input-1-3\" name=\"rating-input-1\">\n" +
                    "\t\t\t\t\t\t\t\t\t        <label for=\"rating-input-1-3\" class=\"rating-star\"> </label>\n" +
                    "\t\t\t\t\t\t\t\t\t        <input type=\"radio\" class=\"rating-input\" id=\"rating-input-1-2\" name=\"rating-input-1\">\n" +
                    "\t\t\t\t\t\t\t\t\t        <label for=\"rating-input-1-2\" class=\"rating-star\"> </label>\n" +
                    "\t\t\t\t\t\t\t\t\t        <input type=\"radio\" class=\"rating-input\" id=\"rating-input-1-1\" name=\"rating-input-1\">\n" +
                    "\t\t\t\t\t\t\t\t\t        <label for=\"rating-input-1-1\" class=\"rating-star\"> </label>\n" +
                    "\t\t\t\t\t\t\t    \t   </span>\n" +
                    "\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t<a class=\"now-get get-cart\"  href=\"addToCart?id="+book.getId()+"\">ADD TO CART</a>\n" +
                    "\t\t\t\t\t<div class=\"clearfix\"> </div>\n" +
                    "\n" +
                    "\t\t\t\t</div>\n" +
                    "\t\t\t</div>\n" +
                    "\t\t</div>";

        }
        return result;
    }

    @RequestMapping(value = "/product")
    public  String showpro(Model model,HttpServletRequest request){
        HttpSession session = request.getSession();
        // da dang  nhap thanh cong
        try{
            String username = request.getUserPrincipal().getName();
            // ten user da login
            model.addAttribute("username", username);
        }catch (Exception e){

        }
    List<CategoryEntity> categoryEntityList=(List<CategoryEntity>) categoryRepository.findAll();
    model.addAttribute("categoryEntityList",categoryEntityList);
    List<BookEntity> book= (List<BookEntity>) bookRepository.findAll();
    model.addAttribute("book",book);
    return "product";
    }
    @RequestMapping(value = "/viewById")
    public String showproductbyid(Model model, @RequestParam("id") int categoryId,HttpServletRequest request) {
        HttpSession session = request.getSession();
        // da dang  nhap thanh cong
        try{
            String username = request.getUserPrincipal().getName();
            // ten user da login
            model.addAttribute("username", username);
        }catch (Exception e){
        }
        List<BookEntity> bookEntityList = (List<BookEntity>) bookRepository.listbookBycategory(categoryId);
        model.addAttribute("bookEntityList", bookEntityList);
        List<CategoryEntity> categoryEntityList=(List<CategoryEntity>) categoryRepository.findAll();
        model.addAttribute("categoryEntityList",categoryEntityList);
        return "product";
    }

    @RequestMapping(value = "/contact")
    public String contact(Model model) {
        return "contact";

    }

    @RequestMapping(value = "/cart")
    public String return_cart(){
        return "index";
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
    }

    @RequestMapping(value = "/search", method = POST)
    public String search(@RequestParam("searchInput")String searchInput, Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        // da dang  nhap thanh cong
        try{
            String username = request.getUserPrincipal().getName();
            // ten user da login
            model.addAttribute("username", username);
        }catch (Exception e){

        }
        List<BookEntity> resultList;
        if (searchInput.isEmpty()) {
            resultList = (List<BookEntity>) bookRepository.findAll();
        } else {
            resultList = bookRepository.findByNameContaining(searchInput);
        }
        model.addAttribute("book", resultList);
        List<CategoryEntity> categoryEntityList=(List<CategoryEntity>) categoryRepository.findAll();
        model.addAttribute("categoryEntityList",categoryEntityList);
        return "index";
    }
}
