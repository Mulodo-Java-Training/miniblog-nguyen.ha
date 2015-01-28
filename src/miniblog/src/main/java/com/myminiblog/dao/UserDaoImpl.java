package com.myminiblog.dao;
import java.util.ArrayList;
import java.util.List;

import javax.management.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.myminiblog.model.User ;

@Repository
public class UserDaoImpl implements UserDao {
	private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	 
    private SessionFactory sessionFactory;
     
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }
 
    @Override
    public void addUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("Person saved successfully, Person Details="+user);
    }
 
    @Override
    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
        logger.info("Person updated successfully, Person Details="+user);
    }
 
    @SuppressWarnings("unchecked")
    @Override
    public List<User> listUsers() {
        Session session = this.sessionFactory.getCurrentSession();
        List<User> usersList = session.createQuery("from User").list();
        logger.info("List Users ");
        for(User u : usersList){
            logger.info("Person List::"+u);
        }
        return usersList;
    }
    
    @SuppressWarnings("unchecked")
    @Override
    public List<User> getListUserByName (String name,int limit , int pos){
    	String nameSearch = name.toLowerCase();
    	Session session = this.sessionFactory.getCurrentSession();
    	logger.info("List getListUserByName "+name);
    	System.out.println("List getListUserByName "+name);
    	List<User> usersList = new ArrayList<User>();
        
    	usersList = session
			.createQuery("from User where username like ? or firstname = ? or lastname = ? ")
			.setParameter(0, "%"+nameSearch+"%")
			.setParameter(1, nameSearch)
			.setParameter(2, nameSearch)
			.setFirstResult(pos)
    		.setMaxResults(limit)
			.list();
    	logger.info("list count "+usersList.size());
    	System.out.println("list count "+usersList.size());
        return usersList;
    }
 
    @SuppressWarnings("unchecked")
    @Override
    public int countListUserByName (String name){
    	String nameSearch = name.toLowerCase();
    	Session session = this.sessionFactory.getCurrentSession();
    	
    	
        
    	Long result =(Long) session
			.createQuery("select count(*) from User where username like ? or firstname = ? or lastname = ?")
			.setParameter(0, "%"+nameSearch+"%")
			.setParameter(1, nameSearch)
			.setParameter(2, nameSearch)
    		.uniqueResult();
    	
        return result.intValue();
    }
    
    @Override
    public User getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();      
        User user = (User) session.load(User.class, new Integer(id));
        logger.info("Person loaded successfully, Person details="+user);
        return user;
    }
    
    @SuppressWarnings("unchecked")
    @Override
    public User findByUserName (String username) {
       
        logger.info("getUserByUsername "+username);
        
        Session session = this.sessionFactory.getCurrentSession();
        List<User> users = new ArrayList<User>();
        
		users = session
			.createQuery("from User where username = ?")
			.setParameter(0, username)
			.list();
//        users = session.createQuery("from User where username=",username).list();
//        Query query = session.createQuery("from User u where u.username = :username");
//        users = query.setParameter("username", username);
		if (users.size() > 0) {
			return users.get(0);
		} else {
			return null;
		} 
    }
    @Override
    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User u = (User) session.load(User.class, new Integer(id));
        if(null != u){
            session.delete(u);
        }
        logger.info("Person deleted successfully, person details="+u);
    }
}
