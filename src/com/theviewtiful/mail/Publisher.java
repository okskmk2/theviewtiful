package com.theviewtiful.mail;

public interface Publisher {
	<T> boolean publish(T report);
}
