package com.theviewtiful.mail;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
@Service
public class EmailPublisherService implements Publisher{
	
	private static final Logger logger = Logger.getLogger(EmailPublisherService.class);
	
	@Autowired
    private JavaMailSender javaMailSender;

    @Override
    public <T> boolean publish(T report) {
        logger.debug("Sending report by email...");
        boolean retVal = false;
        try {
            final String emailTo = "to@test.co.kr";
            final String emailFrom = "from@test.co.kr";
            final String subject = "test subject";
            final String message = (String) report;

            javaMailSender.send(new MimeMessagePreparator() {

                @Override
                public void prepare(MimeMessage paramMimeMessage) throws Exception {
                    MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(paramMimeMessage, true, "UTF-8");

                    mimeMessageHelper.setTo(emailTo);
                    mimeMessageHelper.setFrom(emailFrom);
                    mimeMessageHelper.setSubject(subject);
                    mimeMessageHelper.setText(message);

                    final File file = new File("test filename");

                    mimeMessageHelper.addAttachment(MimeUtility.encodeText("filename"), new InputStreamSource() {

                        @Override
                        public InputStream getInputStream() throws IOException {
                            // TODO Auto-generated method stub
                            return new FileInputStream(file);
                        }
                    });

                };
            });

            retVal = true;
        } catch (Exception e) {
            logger.error("Can't send email... " + e.getMessage(), e);
        }
        return retVal;
    }

}
