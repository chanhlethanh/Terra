package com.lab.dao;

import com.lab.entity.EmailDetails;

public interface EmailService {
	String sendSimpleMail(EmailDetails details);

	// Method
	// To send an email with attachment
	String sendMailWithAttachment(EmailDetails details);
}
