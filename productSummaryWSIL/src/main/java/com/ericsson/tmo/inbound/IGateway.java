package com.ericsson.tmo.inbound;

import org.springframework.messaging.Message;

public interface IGateway {

	
	
	Message getProductOfferingSummary(Message<?> message);//DOMSource request
	
	
	
}
