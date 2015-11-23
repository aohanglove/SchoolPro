package repo.xirong.java.demo.service;

import repo.xirong.java.demo.model.User;

import java.util.ArrayList;

/**
 * description:
 * author: xirong
 * date: 2015-02-28
 * version: 1.0
 * copyright 2015 elong Inc ,all rights reserved.
 */
public interface UserService {
    ArrayList<User> getAllUsers ();
    
    Boolean validUserByNameAndPass(String userName, String passWord);
    
    User getUserByUName(String userName);
}
