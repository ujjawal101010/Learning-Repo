package com.entities;



@jakarta.persistence.Entity
@jakarta.persistence.Table(name = "users")
public class User {

    @jakarta.persistence.Id
    private String username;
    private String password;
    private String email;

   

	// Getters and setters
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
    public User(String username, String password, String email) {
		super();
		
		this.username=username;
		this.password=password;
		this.email=email;
    }
    public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
