package com.ericsson.tmo.processor;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;

import org.apache.log4j.Logger;
import org.springframework.xml.transform.StringResult;
import org.springframework.xml.transform.StringSource;

import com.ericsson.tmo.constants.IEndpointConstants;
import com.ericsson.tmo.utils.XSLTTransformerCache;

public class ProductOfferingSummaryTransformer {

	private XSLTTransformerCache cache;

	private static final Logger log = Logger.getLogger(ProductOfferingSummaryTransformer.class);

	public XSLTTransformerCache getCache() {
		return cache;
	}

	public void setCache(XSLTTransformerCache cache) {
		this.cache = cache;
		//log.debug("XSLTTransformerCache set");
	}

	public String transform_wsil_epc_getProductOfferingSummaryRequest(Source wsilResquest) {
		Transformer transformer = cache.getXSLTransformer(IEndpointConstants.cachedKey_wsil_epc_productOfferingSummary);

		Result logDebuggerWsilRequest = new StringResult();

		Result transformedResultant = new StringResult();

		try {

			TransformerFactory factory = TransformerFactory.newInstance();
			Transformer transformerReq = factory.newTransformer();
			transformerReq.transform(wsilResquest, logDebuggerWsilRequest);

			//log.info("WSIL REQ:---->" + logDebuggerWsilRequest.toString());
			//log.info("Transforming to EPC request");

			transformer.transform(new StringSource(logDebuggerWsilRequest.toString()), transformedResultant);

			//log.info("transformedResultant EPC request:-->>>>" + transformedResultant.toString());
		} catch (TransformerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return transformedResultant.toString();
	}

	public String transform_epc_wsil_getProductOfferingSummaryResponse(String xmlOnResponse) {

		Transformer transformer = cache.getXSLTransformer(IEndpointConstants.cachedKey_epc_wsil_productOfferingSummary);
		
		Result logDebuggerWsilResponse = new StringResult();
		Result transformedWSILResultant = new StringResult();

		try {

			/*TransformerFactory factory = TransformerFactory.newInstance();
			Transformer transformerReq = factory.newTransformer();
			transformerReq.transform(xmlOnResponse, logDebuggerWsilResponse);
			*/
			
			/*log.info("EPC RESPONSE:---->" + xmlOnResponse.toString());
			log.info("Transforming to WSIL response");*/

			transformer.transform(new StringSource(xmlOnResponse.toString()), transformedWSILResultant);

			//log.info("transformedResultant WSIL Response:-->>>>" + transformedWSILResultant.toString());
		} catch (TransformerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return transformedWSILResultant.toString();
	}

}
