package com.ericsson.tmo.processor;

import org.springframework.messaging.Message;

public interface IProcessor {

	public Message processMessage(Message message);
	
}
