package com.ericsson.tmo.inbound;

import org.apache.log4j.Logger;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.messaging.Message;

public class ProductCatalogSummaryXMLGateway implements IGateway{//, InitializingBean


	private static final Logger log = Logger.getLogger(ProductCatalogSummaryXMLGateway.class);

	
	@ServiceActivator
	public Message getProductOfferingSummary(Message<?> message) {
		// TODO Auto-generated method stub
		
		/*log.debug("Request Class"+message.getClass());
		log.debug("Request Headers"+message.getHeaders());
		log.info("Reuested Payload"+message.getPayload());
		
		log.info("***"+message.getHeaders().get("ws_soapAction"));*/
		
		
		
		/*try {
		      DOMSource source = (DOMSource)message.getPayload();//new DOMSource((DOMSource)message.getPayload());
		      StringResult result = new StringResult();
		      TransformerFactory transFactory = TransformerFactory.newInstance();
		      Transformer transformer = transFactory.newTransformer();
		      transformer.transform(source, result);
		      System.out.println("result-->"+result.toString());
		    } catch (Exception ex) {
		    }*/
		
		
		return message;
		
	}

	

}
