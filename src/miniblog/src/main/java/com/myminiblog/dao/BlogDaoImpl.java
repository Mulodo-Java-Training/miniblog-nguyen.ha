package com.myminiblog.dao;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.myminiblog.model.Blog;
import com.myminiblog.model.User;


@Repository
public class BlogDaoImpl implements BlogDao {
	private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	 
    private SessionFactory sessionFactory;
     
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }
	
    @Override
	public void addBlog(Blog b){
    	Session session = this.sessionFactory.getCurrentSession();
        session.persist(b);
        logger.info("Blog saved successfully, Blog Details="+b);
	}
	
    @Override
    public void updateBlog(Blog b){
    	Session session = this.sessionFactory.getCurrentSession();
        session.update(b);
        logger.info("Blog updated successfully, Blog Details="+b);
    }
    
    @SuppressWarnings("unchecked")
    @Override
    public List<Blog> listBlogs(){
    	Session session = this.sessionFactory.getCurrentSession();
        List<Blog> blogsList = session.createQuery("from Blog").list();
        logger.info("List Blogs ");
        for(Blog u : blogsList){
            logger.info("Blog List::"+u);
        }
        return blogsList;
    }
    
    @SuppressWarnings("unchecked")
    @Override
    public List<Blog> listTopBlogs(){
    	Session session = this.sessionFactory.getCurrentSession();
    	List<Blog> blogsList = new ArrayList<Blog>();
        blogsList = session.createQuery("from Blog").list();
        logger.info("List Blogs ");
        for(Blog u : blogsList){
            logger.info("Blog List::"+u);
        }
        return blogsList;
    }
    
    @SuppressWarnings("unchecked")
    @Override
    public List<Blog> getBlogsByUser(String username){
    	Session session = this.sessionFactory.getCurrentSession();
        List<Blog> blogsList = session
    			.createQuery("from Blog where author = ?")
    			.setParameter(0, username)
    			.list();
        logger.info("List Blogs ");
        for(Blog u : blogsList){
            logger.info("Blog List::"+u);
        }
        return blogsList;
    }
}
