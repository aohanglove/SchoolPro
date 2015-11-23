
package repo.xirong.java.demo.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import repo.xirong.java.demo.service.UserService;
import repo.xirong.java.demo.vo.BaseResponse;
import repo.xirong.java.demo.vo.Constants;

@Controller
public class LoginController {
  
  @Autowired
  private UserService userService;

  @RequestMapping(value="/login", method = RequestMethod.GET)
  public @ResponseBody String login(@RequestParam String userName, @RequestParam String passWord, HttpSession session){
    BaseResponse response = new BaseResponse();
    if (userName == null || passWord == null || userName.length() == 0 || passWord.length() == 0) {
      response.setReturnCode(Constants.ReturnCode.BLANK_ERROR.getValue());
      response.setReturnMessage("用户名或密码为空");
    }
    else if (userService.validUserByNameAndPass(userName, passWord)) {
      session.setAttribute("loginUser", userService.getUserByUName(userName));
      response.setReturnCode(Constants.ReturnCode.SUSCESS.getValue());
    }
    else {
      response.setReturnCode(Constants.ReturnCode.LOGIN_ERROR.getValue());
      response.setReturnMessage("用户名或密码错误");
    }
    return JSONObject.toJSONString(response);
  }
}