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
   message.setText("Hi "+studentEntry.getFirstName()+"!\n\n \t In accordance to your concern or complaint, here's our answer.\n\n\t"+body+"\n\n\n\n"+ member.getFirstName()+" "+member.getLastName()+
		   			"\n"+ member.getPosition() +"\nSTUDENT COUNCIL OF ENGINEERING");
   
   //send message
   Transport.send(message);

   System.out.println("message to "+studentEntry.getEmailAddress()+" sent successfully");
   return true;
 
  } catch (MessagingException e) {System.out.println("EmailException: " + e.getMessage()); return false;}
 
 }
}