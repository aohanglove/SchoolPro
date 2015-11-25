
package repo.xirong.java.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @title ScoreController
 * @description TODO 
 * @author hansonliu
 * @date 2015年11月25日
 * @version 1.0
 */
@Controller
@RequestMapping("/score")
public class ScoreController {

  @RequestMapping("/student")
  public String drawStudentScore(Model model){
    return "score_student";
  }
}

