package com.ericsson.tmo.inbound;

import org.apache.log4j.Logger;


//@Endpoint
public class ProductCatalogueEndpoint {

	public static final String NAMESPACE_URI_ProductOffering = "http://services.tmobile.com/ProductManagement/ProductOfferingSummaryWSIL/V1";
	public static final String localPart_ProductOffering = "getProductOfferingSummaryRequest";
	
	private static Logger applicationLoger = Logger.getLogger(ProductCatalogueEndpoint.class);

/*	
	private GetProductOfferingSummaryResponse getProductOfferingSummaryResponse;
	private GetProductOfferingSummaryRequest getProductOfferingSummaryRequest;
	
	public GetProductOfferingSummaryResponse getGetProductOfferingSummaryResponse() {
		return getProductOfferingSummaryResponse;
	}

	public void setGetProductOfferingSummaryResponse(GetProductOfferingSummaryResponse getProductOfferingSummaryResponse) {
		this.getProductOfferingSummaryResponse = getProductOfferingSummaryResponse;
	}
	

	public GetProductOfferingSummaryRequest getGetProductOfferingSummaryRequest() {
		return getProductOfferingSummaryRequest;
	}

	public void setGetProductOfferingSummaryRequest(GetProductOfferingSummaryRequest getProductOfferingSummaryRequest) {
		this.getProductOfferingSummaryRequest = getProductOfferingSummaryRequest;
	}*/

	/*@PayloadRoot(namespace = NAMESPACE_URI_ProductOffering, localPart = localPart_ProductOffering)
    public void getProductOfferingSummary(@RequestPayload JAXBElement<GetProductOfferingSummaryRequest> body) { 
		System.out.println("Executing operation getProductOfferingSummary of Endpoint ProductOfferingSummary_WSIL");
        System.out.println(body);
        try {
        	
           GetProductOfferingSummaryResponse _return = null;

           applicationLoger.info("Initialize request Mapper");
           
           // return null;
            
        } catch (java.lang.Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex);
        }
    }
	*/
	
	
	
	
}
