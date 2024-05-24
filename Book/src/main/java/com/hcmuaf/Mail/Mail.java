package com.hcmuaf.Mail;


import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class Mail {
    private static Properties prop = new Properties();
    static {
        prop.put("mail.smtp.host",MailProperties.getHost());
        prop.put("mail.smtp.port",MailProperties.getPort());
        prop.put("mail.smtp.auth",MailProperties.getAuth());
        prop.put("mail.smtp.socketFactory.port",MailProperties.getPort());
        prop.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
    }
    public static boolean sendMail(String to, String subject, String mess){
        javax.mail.Session session = javax.mail.Session.getInstance(prop, new Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
                return new javax.mail.PasswordAuthentication(MailProperties.getUsername(), MailProperties.getPassword());
            }
        });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(MailProperties.getUsername()));
            message.setRecipients(
                    Message.RecipientType.TO, InternetAddress.parse(MailProperties.getUsername())
            );
            message.setRecipients(
                    Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject("Testing Gmail SSl");
            message.setText("Dear Mail Crawler, " + "\n\n Please do not spam my email!");
            message.setSubject(subject);
            message.setText(mess);
            Transport.send(message);
            return true;

        }
        catch (MessagingException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {
        Session session = Session.getInstance(prop, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(MailProperties.getUsername(), MailProperties.getPassword());
            }
        });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(MailProperties.getUsername()));
            message.setRecipients(
                    Message.RecipientType.TO, InternetAddress.parse(MailProperties.getUsername()));

            message.setSubject("testting gamil");
            message.setText("Dear mail thang, " + "\n\n Please do not spam email");
            Transport.send(message);

        } catch (AddressException e) {
            throw new RuntimeException(e);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}
