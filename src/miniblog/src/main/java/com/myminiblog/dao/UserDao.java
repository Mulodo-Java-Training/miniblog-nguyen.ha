package com.myminiblog.dao;
import java.util.List;

import com.myminiblog.model.User ;

public interface UserDao {
	public void addUser(User p);
    public void updateUser(User p);
    public List<User> listUsers();
    public User getUserById(int id);
    public User findByUserName(String username);
    public void removeUser(int id);
}
