package com.myminiblog.controller;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.myminiblog.spring.service.UserService;
import com.myminiblog.model.User;
import com.myminiblog.spring.service.BlogService;
import com.myminiblog.model.Blog;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private ServletContext servletContext;
	@Autowired(required=true)
	@Qualifier(value="servletContext")
	public void setServletContext(ServletContext servletContext) {
	this.servletContext = servletContext;
	 
	}
	private UserService userService;
	private BlogService blogService;
    @Autowired(required=true)
    @Qualifier(value="userService")
    public void setUserService(UserService us){
        this.userService = us;
    }
    @Autowired(required=true)
    @Qualifier(value="blogService")
    public void setBlogService(BlogService bs){
        this.blogService = bs;
    }
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
//		model.addAttribute("listUsers", this.userService.listUsers());
		 model.addAttribute("listTopBlogs", this.blogService.listTopBlogs());
		return "home";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET) 
	public String login(Locale locale, Model model) {
		logger.info("Welcome login! ");
		User u = new User();
		model.addAttribute("User", u);
		return "login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("User") User p,Model model,HttpServletRequest request) {
		
		String username = p.getUsername();
		String password = p.getPassword();
		logger.info("Welcome dologin! "+username);
		if (this.userService.checkLogin(username, password))
		{
			request.getSession().setAttribute("user_loged_in", username);
//			model.addAttribute("username", username);
//			model.addAttribute("listTopBlogs", this.blogService.listTopBlogs());
			return "redirect:/";
		}else{
			model.addAttribute("login_error", username);
			return "login";
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET) 
	public String logout(Locale locale, Model model,HttpServletRequest request) {
		logger.info("Welcome logout! ");
		request.getSession().removeAttribute("user_loged_in");
//		User u = new User();
//		model.addAttribute("User", u);
		return "redirect:/";
	}
	@RequestMapping(value = "/users", method = RequestMethod.GET)
    public String listUsers(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("listUsers", this.userService.listUsers());
        return "list";
    }
     
    //For add and update person both
    @RequestMapping(value= "/user/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("userinfo") User p,Model model,@RequestParam(value = "imagelink", required = false) MultipartFile image,HttpServletRequest request){
        
    	
    	String username = p.getUsername();
    	User user = this.userService.findByUserName(username);
        if(user ==null){
            //new person, add it
            this.userService.addUser(p);
        }else{
        	
        	if(!user.getImage().equals(image.getOriginalFilename())){
        		if(image.getSize()<5000000){
        		try {
            	
            		String nameImageNew = user.getUsername() +image.getOriginalFilename();
            		
            		saveImage(nameImageNew, image);
            		user.setImage(nameImageNew);
            	} catch (IOException e) {
//            		bindingResult.reject(e.getMessage());
            		model.addAttribute("error","true");
            		return "updateUserInfo";
            	}
        		}else{
        			model.addAttribute("error","Size of image should < 5000000 byte");
            		return "updateUserInfo";
        		}
           		
        	}
        	
        	
            //existing person, call update
        	user.setAddress(p.getAddress());
        	user.setEmail(p.getEmail());
        	user.setFirstname(p.getFirstname());
        	user.setLastname(p.getLastname());
            this.userService.updateUser(user);
            model.addAttribute("userinfo",user);
            model.addAttribute("error","false");
        }
         
        return "updateUserInfo";
         
    }
    private void saveImage(String filename, MultipartFile image)
    		throws RuntimeException, IOException {
		try {
			logger.info("function  ");
			String webappRoot = servletContext.getRealPath("/");
		    String relativeFolder = "/resources/avatar/" ;
		    String realPath = webappRoot + relativeFolder
		                       + filename;
//			String realPath = servletContext.getRealPath(filename);
		File file = new File(realPath);
		logger.info("saveImage  "+file.getAbsolutePath());
		logger.info("realPath  "+realPath);
		FileUtils.writeByteArrayToFile(file, image.getBytes());
		System.out.println("Go to the location:  " + file.toString()
		+ " on your computer and verify that the image has been stored.");
		} catch (IOException e) {
		throw e;
		}
    }

    @RequestMapping("/remove/{id}")
    public String removeUser(@PathVariable("id") int id){
         
        this.userService.removeUser(id);
        return "redirect:/users";
    }
  
    @RequestMapping("/edit/{username}")
    public String editUser(@PathVariable("username") String username, Model model,HttpServletRequest request){
    	User user = this.userService.findByUserName(username);

        model.addAttribute("userinfo", user );
        return "updateUserInfo";
    }
}
