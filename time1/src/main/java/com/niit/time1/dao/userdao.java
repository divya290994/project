package com.niit.time1.dao;

import org.springframework.stereotype.Repository;

@Repository

public class userdao {
	
		public boolean isvalidUser(String name,String password)
		{
			if(name.equals("niit")&&password.equals("niit@123"))
			{
				return true;
			}
			else
			{
				return false;
			}
			}
			
		}



