package com.myminiblog.spring.service;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myminiblog.model.User;
import com.myminiblog.dao.UserDao;

@Service
public class UserServiceImpl implements UserService{

	private UserDao userDAO;
	 
    public void setUserDAO(UserDao _userDao) {
        this.userDAO = _userDao;
    }
 
    @Override
    @Transactional
    public void addUser(User p) {
        this.userDAO.addUser(p);
    }
 
    @Override
    @Transactional
    public void updateUser(User p) {
        this.userDAO.updateUser(p);
    }
 
    @Override
    @Transactional
    public List<User> listUsers() {
        return this.userDAO.listUsers();
    }
 
    @Override
    @Transactional
    public User getUserById(int id) {
        return this.userDAO.getUserById(id);
    }
    
    @Override
    @Transactional
    public User findByUserName (String username){
    	return this.userDAO.findByUserName(username);
    }
    
    @Override
    @Transactional
    public boolean checkLogin(String username , String password){
    	User u = this.userDAO.findByUserName(username);
    	if (u!=null)
    	{
    		if	(u.getPassword().endsWith(password) )
    			return true;
    	}
    	return false;
    }
    
    @Override
    @Transactional
    public void removeUser(int id) {
        this.userDAO.removeUser(id);
    }
}
