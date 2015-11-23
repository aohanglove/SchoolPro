
package repo.xirong.java.demo.vo;

public class Constants {

  public static enum ReturnCode{
    //登录code
    SUSCESS(11), BLANK_ERROR(12), LOGIN_ERROR(13);
    
    private Integer value;
    private ReturnCode(int value){
      this.value = value;
    }
    public Integer getValue(){
      return this.value;
    }
  }
}