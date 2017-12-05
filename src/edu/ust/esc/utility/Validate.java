package edu.ust.esc.utility;

import java.sql.Connection;

import edu.ust.esc.utility.sql.SQLOperations;


public class Validate {
	
	public static boolean isValid(String studentNumber, Connection connection)
	{
		if(SQLOperations.searchStudentNumber(studentNumber,connection)!=0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}

}
