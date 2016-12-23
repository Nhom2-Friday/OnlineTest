package classes;

public class ClassUser {
	    private String perUser;
	    private String perName;
	    
	    public ClassUser() 
	    {
	    	
	    }
	    public ClassUser(String perUser, String perName) {
	      this.perUser = perUser;
	      this.perName = perName;
	    }

	    public String getperUser() {
	        return perUser;
	    }

	    public void setperUser(String perUser) {
	    	this.perUser = perUser;
	 
	    }

	    public String getperName() {
	    	return perName; 
	        
	    }

	    public void setperName(String perName)
	    {
	    	this.perName = perName;     
	    }
	    
	    
	}


