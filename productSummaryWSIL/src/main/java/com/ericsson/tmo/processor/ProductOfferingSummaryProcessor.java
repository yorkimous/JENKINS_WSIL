package com.ericsson.tmo.processor;

import java.io.StringReader;

import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamSource;

import org.apache.log4j.Logger;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.integration.support.MessageBuilder;
import org.springframework.messaging.Message;
import org.springframework.xml.transform.StringResult;


public class ProductOfferingSummaryProcessor implements IProcessor {

	private static final Logger log = Logger.getLogger(ProductOfferingSummaryProcessor.class);

	private ProductOfferingSummaryTransformer productOfferingSummaryTransformer;

	public ProductOfferingSummaryTransformer getProductOfferingSummaryTransformer() {
		return productOfferingSummaryTransformer;
	}

	public void setProductOfferingSummaryTransformer(
			ProductOfferingSummaryTransformer productOfferingSummaryTransformer) {
		this.productOfferingSummaryTransformer = productOfferingSummaryTransformer;
	}

	@ServiceActivator
	public Message processMessage(Message message) {
		// TODO Auto-generated method stub

		/*log.debug("Reached processor processMessage:-->" + message.getClass());
		log.debug("Reached processor processMessage:-->" + message.getHeaders());*/
		//log.info("Reached processor processMessage:-->" + message.getPayload());
		
		String epcReq = productOfferingSummaryTransformer
				.transform_wsil_epc_getProductOfferingSummaryRequest((DOMSource) message.getPayload());
		// onReq.
		
		Source request = new StreamSource(new StringReader(epcReq));
		

		Message<Source> epcReqMsg = MessageBuilder.withPayload(request).build();
		
		return epcReqMsg;

	}

	@ServiceActivator
	public Message responseAggregator(Message message) {

		/*log.debug("Reached processor responseAggregator:-->" + message.getClass());
		log.debug("Reached processor responseAggregator:-->" + message.getHeaders());*/
		//log.info("Reached processor responseAggregator:-->" + message.getPayload());
		String epcResponse = "";
		
		try {
		      DOMSource source = (DOMSource)message.getPayload();//new DOMSource((DOMSource)message.getPayload());
		      StringResult result = new StringResult();
		      TransformerFactory transFactory = TransformerFactory.newInstance();
		      Transformer transformer = transFactory.newTransformer();
		      transformer.transform(source, result);
		      //System.out.println("result-->"+result.toString());
		      
		      epcResponse = result.toString();
		      
		      epcResponse = epcResponse.trim();
		      
		      
		    } catch (Exception ex) {
		    }
		
		

		String wsilRes = productOfferingSummaryTransformer
				.transform_epc_wsil_getProductOfferingSummaryResponse(epcResponse);

		Message<String> wsilResponseMsg = MessageBuilder.withPayload(wsilRes.toString()).build();

		return wsilResponseMsg;

	}

}
