package com.myminiblog.model;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="Users")
public class User {
	@Id
    @Column(name="id")
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@Column (nullable=false, name="username")
    private String username;
	@Column (nullable=false, name="password")
    private String password;
	@Column (nullable=false, name="firstname")
    private String firstname;
	@Column (nullable=false, name="lastname")
    private String lastname;
	@Column (nullable=true, name="address")
    private String address;
	@Column (nullable=true, name="email")
    private String email;
	@Column (nullable=true, name="image")
    private String image;
	@Column (nullable=false, name="status")
    private int status;
	@Column (nullable=false, name="created_at")
    private int created_at;
	@Column (nullable=false, name="updated_at")
    private int updated_at;
 
	
    @OneToMany(mappedBy = "user",fetch = FetchType.EAGER)

    private List<Blog> blogs;
    public List<Blog> getBlogs() {
        return blogs;
    }

    public void setBlogs(List<Blog> _blogs) {
        this.blogs = _blogs;
    }

	
	
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public String getUsername() {
        return username;
    }
 
    public void setUsername(String _username) {
        this.username = _username;
    }
 
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String _password) {
        this.password = _password;
    }
    public String getFirstname() {
        return firstname;
    }
 
    public void setFirstname(String _firstname) {
        this.firstname = _firstname;
    }
    public String getLastname() {
        return lastname;
    }
 
    public void setLastname(String _lastname) {
        this.lastname = _lastname;
    }
    public String getAddress() {
        return address;
    }
 
    public void setAddress(String _address) {
        this.address = _address;
    }
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String _email) {
        this.email = _email;
    }
    
    public String getImage() {
        return image;
    }
 
    public void setImage(String _image) {
        this.image = _image;
    }
    
    public int getStatus() {
        return status;
    }
    
    public void setStatus(int _status) {
        this.status = _status;
    }
    public int getCreated_at() {
        return created_at;
    }
 
    public void setCreated_at(int _created_at) {
        this.created_at = _created_at;
    }
    public int getUpdated_at() {
        return updated_at;
    }
 
    public void setUpdated_at(int _updated_at) {
        this.updated_at = _updated_at;
    }
}
