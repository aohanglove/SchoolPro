package repo.xirong.java.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import repo.xirong.java.demo.model.User;
import repo.xirong.java.demo.service.UserService;

import java.util.ArrayList;

/**
 * 
 * @title HomeController
 * @description TODO
 * @author hansonliu
 * @date 2015年11月23日
 * @version 1.0
 */
@Controller
@RequestMapping(value = "/main")
public class HomeController {

  @Autowired
  private UserService service;

  @RequestMapping(value = "/default")
  public String index(Model model) {
    ArrayList<User> users = service.getAllUsers();
    model.addAttribute("userList", users);
    return "home";
  }


}
