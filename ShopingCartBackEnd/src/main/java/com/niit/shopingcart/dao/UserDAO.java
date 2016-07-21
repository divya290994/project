package com.niit.shopingcart.dao;

import org.springframework.stereotype.Repository;

@Repository

public class UserDAO{
	
		public static boolean isvalidUser(String name,String password)
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



