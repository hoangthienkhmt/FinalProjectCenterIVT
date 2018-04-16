package reviewCrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import reviewCrud.entity.CategoryEntity;
import reviewCrud.entity.UserEntity;
import reviewCrud.repository.CategoryRepository;
import reviewCrud.repository.userRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class loginController {
    @Autowired
    userRepository userRepository;
    @Autowired
    CategoryRepository categoryRepository;
    @RequestMapping(value = "/login",method =GET)
    public String login1(Model model, HttpServletRequest request){
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
        return "login";
    }
    @RequestMapping(value = "/register",method = GET)
    public String register(Model model){
        model.addAttribute("user", new UserEntity());
        model.addAttribute("action", "new");
        return "register";
    }
    @RequestMapping(value = "/new", method = POST, produces = "text/plain;charset=UTF-8")
    public String save(UserEntity users) {
        userRepository.save(users);
        return "redirect:/";
    }
}
