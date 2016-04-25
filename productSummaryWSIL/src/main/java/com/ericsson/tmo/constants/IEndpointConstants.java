package com.ericsson.tmo.constants;

public interface IEndpointConstants {

	
	/*public String NAMESPACE_URI_ProductOffering = "http://services.tmobile.com/ProductManagement/ProductOfferingSummaryWSIL/V1";
	public String localPart_ProductOffering = "getProductOfferingSummaryRequest";
	*/
	public String destinationKeyResolver = "ws_soapAction";
	public String defaultChannel = "errorChannel";
	
	public String soapAction_ProductOffering = "\"getProductOfferingSummary\"";
	public String channelName_ProductOfferingSummary = "catalogSummaryChannel";
	
	public String cachedKey_wsil_epc_productOfferingSummary = "xsl_wsil_epc_getProductOfferingSummaryResquest";
	public String cachedKey_epc_wsil_productOfferingSummary = "xsl_epc_wsil_getProductOfferingSummaryResponse";
	
	
	
	
	
}
