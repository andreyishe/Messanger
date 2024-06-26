package ua.andrey.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import ua.andrey.domain.User;
import ua.andrey.service.UserSevice;

import java.util.Map;

@Controller
public class RegistrationController {
    @Autowired
    private UserSevice userSevice;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model) {


        if (!userSevice.addUser(user)) {
            model.put("message", "User exists!");
            return "registration";
        }
        return "redirect:/login";
    }
    @GetMapping("/activate/{code}")
    public String activate(Model model, @PathVariable String code){
        boolean isActivated = userSevice.activateUser(code);

        if(isActivated){
            model.addAttribute("message", "User successfully activated");
        } else model.addAttribute("message", "Activation code is not found");

        return "lodin";
    }
}
