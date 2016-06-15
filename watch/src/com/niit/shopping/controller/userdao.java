package com.niit.shopping.controller;

public class userdao {
	public boolean isValidCredentials(String user,String pwd)
	{
		if(user.equals("niit")&&pwd.equals("niit@123"))
		{
			return true;
		}
		else
		{
			return false;
		}
		}
		
	}




