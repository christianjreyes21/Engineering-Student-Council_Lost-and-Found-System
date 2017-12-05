package edu.ust.esc.utility;

import edu.ust.esc.model.MemberBean;
import edu.ust.esc.model.StudentEntryBean;

public class BeanFactory {
	
	public static StudentEntryBean getFactoryBean(String lastName, String firstName, 
		String middleName, String yearLevelAndSection, 
		String studentNumber, String emailAddress, String category,
		String concernsAndComplaints) {
		
		StudentEntryBean studentEntry = new StudentEntryBean();
		studentEntry.setLastName(lastName);
		studentEntry.setFirstName(firstName);
		studentEntry.setMiddleName(middleName);
		studentEntry.setYearLevelAndSection(yearLevelAndSection);
		studentEntry.setStudentNumber(studentNumber);
		studentEntry.setEmailAddress(emailAddress);
		studentEntry.setCategory(category);
		studentEntry.setConcernsAndComplaints(concernsAndComplaints);
		return studentEntry;
	}
	
	public static MemberBean getFactoryBean(String username, String password, 
			String firstName, String lastName, String position,
			String picture, String email) {
			
			MemberBean member = new MemberBean();
			member.setUsername(username);
			member.setPassword(password);
			member.setFirstName(firstName);
			member.setLastName(lastName);
			member.setPosition(position);
			member.setPicture(picture);
			member.setEmail(email);
			return member;
		}
}
