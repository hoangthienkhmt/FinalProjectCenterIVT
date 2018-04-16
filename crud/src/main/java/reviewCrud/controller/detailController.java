package reviewCrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import reviewCrud.entity.BookEntity;
import reviewCrud.entity.CategoryEntity;
import reviewCrud.repository.BookRepository;
import reviewCrud.repository.CategoryRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class detailController {
    @Autowired
    BookRepository bookRepository;
    @Autowired
    CategoryRepository categoryRepository;
    @RequestMapping(value = "single",method = GET)
    public String single(Model model, @RequestParam("id") String id, HttpServletRequest request){
        HttpSession session = request.getSession();
        // da dang  nhap thanh cong
        try{
            String username = request.getUserPrincipal().getName();
            // ten user da login
            model.addAttribute("username", username);
        }catch (Exception e){
        }
        BookEntity book= bookRepository.findOne(Integer.valueOf(id));
        model.addAttribute("book",book);
        List<CategoryEntity> categoryEntityList=(List<CategoryEntity>) categoryRepository.findAll();
        model.addAttribute("categoryEntityList",categoryEntityList);
        return "single";
    }
}
