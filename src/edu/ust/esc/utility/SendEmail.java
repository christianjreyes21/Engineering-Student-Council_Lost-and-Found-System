package edu.ust.esc.utility;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.*;

import edu.ust.esc.model.MemberBean;
import edu.ust.esc.model.StudentEntryBean;

public class SendEmail {
 public static boolean replyEmail(MemberBean member, StudentEntryBean studentEntry, String body, String username, String password) {


//Get the session object
  Properties props = new Properties();
  props.put("mail.smtp.host", "smtp.gmail.com");
  props.put("mail.smtp.socketFactory.port", "465");
  props.put("mail.smtp.socketFactory.class",
        	"javax.net.ssl.SSLSocketFactory");
  props.put("mail.smtp.auth", "true");
  props.put("mail.smtp.port", "465");
 
  Session session = Session.getDefaultInstance(props,
   new javax.mail.Authenticator() {
   protected PasswordAuthentication getPasswordAuthentication() {
   return new PasswordAuthentication(username,Security.decrypt(password));
   }
  });
 
//compose message
  try {
   MimeMessage message = new MimeMessage(session);
   message.setFrom(new InternetAddress("ustesc1516@gmail.com"));
   message.addRecipient(Message.RecipientType.TO,new InternetAddress(studentEntry.getEmailAddress()));
   message.setSubject("E.S.C. Students' Welfare and Rights");
   String sample = "<div >"+
	"<div style=\"background-image: url('http://i304.photobucket.com/albums/nn162/tashdiaz/bg_zps0p00tbwm.jpg'); background-size:100%; margin:30px; padding:50px; \">"+
	"<div style=\"color: white; width: 100%; padding:20px;\">" +
		"<center>"+
			"<img src='http://i304.photobucket.com/albums/nn162/tashdiaz/logo_zpskbbnd5q8.png' width='100'/><br/>"+
			"<font style=\"font-size:23px; text-transform: uppercase; font-family: 'verdana';\">Engineering student council</font><br/>"+
			"<font style=\"font-size:13px; text-transform: uppercase; font-family: 'verdana';\">Student's rights and welfare management system</font></center>"+
		
			"<br/><br/><br/><br/>"+
			
			"<p align='left' style=\"font-size:15px; font-family: 'verdana';\">Good day "+studentEntry.getFirstName()+",</p><br/>"+
			"<p align='justify' style=\"font-size:15px; font-family: 'verdana';\">"+
			"	In accordance to your concern or complaint, here's our answer. <br/> <br/> "+body+" <br/> <br/> <br/> <br/> "+ member.getFirstName()+" "+member.getLastName()+"<br/>"+ member.getPosition()+"<br/>STUDENT COUNCIL OF ENGINEERING"+
			"</p>"+
	"</div>"+
	"</div>"+
"</div>";
   message.setContent(sample, "text/html");
   /*message.setText("Hi "+studentEntry.getFirstName()+"!\n\n \t In accordance to your concern or complaint, here's our answer.\n\n\t"+body+"\n\n\n\n"+ member.getFirstName()+" "+member.getLastName()+
		   			"\n"+ member.getPosition() +"\nENGINEERING STUDENT COUNCIL");*/
   
   //send message
   Transport.send(message);

   System.out.println("message to "+studentEntry.getEmailAddress()+" sent successfully");
   return true;
 
  } catch (MessagingException e) {System.out.println("EmailException: " + e.getMessage()); return false;}
 
 }
}