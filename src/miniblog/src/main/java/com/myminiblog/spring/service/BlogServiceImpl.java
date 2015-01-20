package com.myminiblog.spring.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.myminiblog.dao.BlogDao;
import com.myminiblog.model.Blog;

public class BlogServiceImpl implements BlogService {
	private BlogDao blogDAO;
	 
    public void setBlogDAO(BlogDao _blogDAO) {
        this.blogDAO = _blogDAO;
    }
	
	@Override
    @Transactional
	public void addBlog(Blog _blog) {
		this.blogDAO.addBlog(_blog);
	}
	
	@Override
    @Transactional
    public void updateBlog(Blog _blog) {
		this.blogDAO.updateBlog(_blog);
	}
	
	@Override
    @Transactional
    public List<Blog> listBlogs() {
		return this.blogDAO.listBlogs();
		
	}
	
	@Override
    @Transactional
    public List<Blog> listTopBlogs() {
		return this.blogDAO.listTopBlogs();
	}
	
	@Override
    @Transactional
    public List<Blog> getBlogsByUser(String username) {
		return this.blogDAO.getBlogsByUser(username);
	}
}
