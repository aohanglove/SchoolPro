
package repo.xirong.java.demo.base;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.ObjectUtils.Null;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.context.request.WebRequestInterceptor;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class PermissionInterceptor implements HandlerInterceptor {

  public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
      Exception arg3) throws Exception {
  }

  public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
      ModelAndView arg3) throws Exception {
  }

  //通过session判断权限
  public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2)
      throws Exception {
    Object obj = arg0.getSession().getAttribute("loginUser");
    if (obj == null) {
      arg0.getRequestDispatcher("/resources/defaultpage/login.html").forward(arg0, arg1);
      return false;
    }
    return true;
  }


}

