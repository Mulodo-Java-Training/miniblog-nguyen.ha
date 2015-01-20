package com.myminiblog.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Blogs")
public class Blog {
	@Id
    @Column(name="idblog")
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
//	@Column (nullable=false, name="author")
//    private String author;
	@Column (nullable=false, name="title")
    private String title;
	@Column (nullable=false, name="description")
    private String description;
	@Column (nullable=false, name="image")
    private String image;
	@Column (nullable=false, name="status")
    private int status;
	@Column (nullable=false, name="created_at")
    private int created_at;
	@Column (nullable=false, name="updated_at")
    private int updated_at;
	
	@ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "author")

    private User user;

    public User getUser() {
        return user;
    }
    public void setUser(User _author) {
        this.user = _author;
    }
	
//	public String getAuthor() {
//        return author;
//    }
//    
//    public void setAuthor(String _author) {
//        this.author = _author;
//    }
    
    public String getTitle() {
        return title;
    }
    
    public void setTitle(String _title) {
        this.title = _title;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String _description) {
        this.description = _description;
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
