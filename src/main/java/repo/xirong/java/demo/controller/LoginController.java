package repo.xirong.java.demo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import repo.xirong.java.demo.model.User;
import repo.xirong.java.demo.service.UserService;
import repo.xirong.java.demo.vo.BaseResponse;
import repo.xirong.java.demo.vo.Constants;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

  @Autowired
  private UserService userService;

  @RequestMapping(value = "/verify", method = RequestMethod.GET)
  public String loginVerify(@RequestParam String userName, @RequestParam String passWord,
      HttpSession session, Model model) {
    if (session.getAttribute("loginUser") != null) {
      return "redirect:/main/default";
    }

    if (userName == null || passWord == null || userName.length() == 0 || passWord.length() == 0) {
      model.addAttribute("returnCode", Constants.ReturnCode.BLANK_ERROR.getValue());
      model.addAttribute("returnMessage", "用户名或密码为空");
      return "login";
    } else if (userService.validUserByNameAndPass(userName, passWord)) {
      session.setAttribute("loginUser", userService.getUserByUName(userName));
      return "redirect:/main/default";
    } else {
      model.addAttribute("returnCode", Constants.ReturnCode.LOGIN_ERROR.getValue());
      model.addAttribute("returnMessage", "用户名或密码错误");
      return "login";
    }
  }

  @RequestMapping(value = "/")
  public String login(Model model, HttpSession session) {
    if (session.getAttribute("loginUser") != null) {
      return "redirect:/main/default";
    }
    return "login";
  }
}
