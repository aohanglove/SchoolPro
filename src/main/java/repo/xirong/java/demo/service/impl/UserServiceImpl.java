package repo.xirong.java.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repo.xirong.java.demo.mapper.UserMapper;
import repo.xirong.java.demo.model.User;
import repo.xirong.java.demo.service.UserService;

import java.util.ArrayList;

/**
 * description:
 * author: xirong
 * date: 2015-05-27
 * version: 1.0
 * copyright 2015 elong Inc ,all rights reserved.
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper testMapper;

    public ArrayList<User> getAllUsers() {
        return testMapper.getAllUsers();
    }

    public Boolean validUserByNameAndPass(String userName, String passWord) {
      User user = getUserByUName(userName);
      if (user != null && passWord.equals(user.getPassword())) {
        return true;
      }
      return false;
    }

    public User getUserByUName(String userName) {
      return testMapper.getUserByUName(userName);
    }
}
