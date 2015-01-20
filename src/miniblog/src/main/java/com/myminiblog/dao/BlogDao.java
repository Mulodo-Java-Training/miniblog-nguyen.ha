package com.myminiblog.dao;

import java.util.List;

import com.myminiblog.model.Blog;

public interface BlogDao {
	
		public void addBlog(Blog p);
	    public void updateBlog(Blog p);
	    public List<Blog> listBlogs();
	    public List<Blog> listTopBlogs();
	    public List<Blog> getBlogsByUser(String username);
	    
	    
	
}
