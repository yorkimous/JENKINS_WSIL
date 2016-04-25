package com.ericsson.tmo.router;

import org.apache.log4j.Logger;
import org.springframework.messaging.Message;

import com.ericsson.tmo.constants.IEndpointConstants;

public class AsynchronousRouter{
	
	private Logger appLogger = Logger.getLogger(AsynchronousRouter.class);
	
	public String fireAndForget(Message message){
		
		String channelId = IEndpointConstants.defaultChannel;
		
		appLogger.debug("IEndpointConstants.destinationKeyResolver"+(String) message.getHeaders().get(IEndpointConstants.destinationKeyResolver));
		channelId = destinationResolver((String) message.getHeaders().get(IEndpointConstants.destinationKeyResolver));  
		
		//appLogger.debug("channelId"+channelId);
		
		return channelId;
		//return "catalogSummaryChannel";
	}

	private String destinationResolver(String destinationKey){
		
		/*appLogger.debug("destinationKey-->"+destinationKey);
		appLogger.debug("IEndpointConstants.soapAction_ProductOffering-->"+IEndpointConstants.soapAction_ProductOffering);
*/
		String channelId = IEndpointConstants.defaultChannel;

		if(IEndpointConstants.soapAction_ProductOffering.equals(destinationKey))
			channelId = IEndpointConstants.channelName_ProductOfferingSummary;

		return channelId;
	}
	
	
	
}
