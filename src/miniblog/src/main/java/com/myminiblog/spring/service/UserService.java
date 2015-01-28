package com.myminiblog.spring.service;
import java.util.List;

import com.myminiblog.model.User;
public interface UserService {
	public void addUser(User p);
    public void updateUser(User p);
    public List<User> listUsers();
    public User getUserById(int id);
    public User findByUserName (String username);
    //get list user by first name , last name , username
    public List<User> getListUserByName (String name,int limit , int pos);
    public int countListUserByName (String name);
    public boolean checkLogin(String username , String password);
    public void removeUser(int id);
}
