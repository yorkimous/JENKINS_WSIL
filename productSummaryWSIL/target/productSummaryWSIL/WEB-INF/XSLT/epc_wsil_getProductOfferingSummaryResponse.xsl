<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0" xmlns:pfx6="ProductOffering" xmlns:pfx7="http://service.tmobile.com"
	xmlns:pfx8="http://services.tmobile.com/ProductManagement/ProductOfferingSummaryWSIL"
	xmlns:pfx="http://services.tmobile.com/ProductManagement/ProductOfferingSummaryWSIL/V1"
	xmlns:pfx2="http://www.t-mobile.com/schemas/wsil/common/bwexceptionschemamapper"
	xmlns:ns="http://services.tmobile.com/base"
	xmlns:pfx3="http://www.t-mobile.com/schemas/wsil/common/wsilexceptionschemamapper"
	xmlns:pfx4="ericsson_product_offer"
	xmlns:pfx5="http://services.tmobile.com/ProductManagement/CampaignProductOfferingComponent/V1"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tib="http://www.tibco.com/bw/xslt/custom-functions"
	xmlns:ns2="http://www.tibco.com/pe/DeployedVarsType" xmlns:ns1="http://service.tmobile.com/base"
	xmlns:ns4="http://tibco.com/namespaces/tnt/plugins/soap" xmlns:ns3="http://service.ericsson.com/base"
	xmlns:ns6="http://schemas.tibco.com/bw/plugins/http/5.0/cio" xmlns:ns5="http://xmlns.tibco.com/encodings/mime"
	xmlns:ns8="http://schemas.tibco.com/bw/pe/plugin/5.0/exceptions"
	xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns7="http://www.tibco.com/pe/EngineTypes"
	xmlns:ns13="http://www.tibco.com/schemas/CLEClient/Common/SchemaDefinitions/ResponseStatusCodes.xsd"
	xmlns:BW="java://com.tibco.pe.core.JavaCustomXPATHFunctions" xmlns:ns9="http://schemas.tibco.com/bw/plugins/http/5.0/httpExceptions"
	xmlns:ns12="http://www.t-mobile.com/schemas/wsil/common/logerrorhandler"
	xmlns:ns11="http://ericsson.com/services/WSIL/sessionchange"
	xmlns:ns10="http://service.ericsson.com/ProductManagement/ecmServices"
	xmlns:pfx1="http://service.tmobile.com/ProductManagement/ProductOfferingSummaryWSIL/V2"
	xmlns:pfx21="http://www.tibco.com/pe/GenerateErrorActivity/InputSchema"
	xmlns:ns14="http://services.t-mobile.com" xmlns:pd="http://xmlns.tibco.com/bw/process/2003"
	xmlns:pfx11="http://service.ericsson.com/ProductManagement/ProductOffering"
	xmlns:pfx151="http://service.ericsson.com"
	xmlns:pfx12="http://service.ericsson.com/ProductManagement/ProductOfferingServ"
	xmlns:pfx31="http://service.ericsson.com/ProductManagement/ProductOfferingSummaryService"
	xmlns:pfx15="ProductOfferingServ" xmlns:pfx14="http://ericsson.com/services/WSIL">

	<xsl:output method="xml" standalone="yes"
		omit-xml-declaration="no" />
	<xsl:template match="/">

		<pfx:getProductOfferingSummaryResponse>
		    
		   <!--  <xsl:variable name="_globalVariables" select="document('globalVariables.xml')" />
		    <xsl:variable name="Start" select="document('start.xml')" /> -->
		    
		    <!-- or(count($Start)
		    <xsl:choose>
		        <xsl:when test="$Start"> 
		            <xsl:value-of select="$Start/"/>
		        </xsl:when>
		    </xsl:choose>
		    
		    <xsl:choose>
		        <xsl:when test="$_globalVariables"> 
		            <xsl:value-of select="$_globalVariables"/>
		        </xsl:when>
		    </xsl:choose>
             -->
		    
		    <xsl:if
				test="/pfx:getProductOfferingSummaryRequest/@serviceTransactionId">
				<xsl:attribute name="serviceTransactionId">
            <xsl:value-of
					select="/pfx:getProductOfferingSummaryRequest/@serviceTransactionId" />
        </xsl:attribute>
			</xsl:if>
			<xsl:if test="/pfx:getProductOfferingSummaryRequest/@version">
				<xsl:attribute name="version">
            <xsl:value-of
					select="/pfx:getProductOfferingSummaryRequest/@version" />
        </xsl:attribute>
			</xsl:if>
			<xsl:for-each select="/ns10:getProductOfferingSummaryResponse/ns3:header">
				<ns:header>
					<xsl:for-each select="ns3:sender">
						<ns:sender>
							<ns:senderId>
								<xsl:value-of select="ns3:senderId" />
							</ns:senderId>
							<ns:channelId>
								<xsl:value-of select="ns3:channelId" />
							</ns:channelId>
							<ns:applicationId>
								<xsl:value-of select="ns3:applicationId" />
							</ns:applicationId>
							<xsl:if test="ns3:applicationUserId">
								<ns:applicationUserId>
									<xsl:value-of select="ns3:applicationUserId" />
								</ns:applicationUserId>
							</xsl:if>
							<xsl:if test="ns3:sessionId">
								<ns:sessionId>
									<xsl:value-of select="ns3:sessionId" />
								</ns:sessionId>
							</xsl:if>
							<xsl:if test="ns3:workflowId">
								<ns:workflowId>
									<xsl:value-of select="ns3:workflowId" />
								</ns:workflowId>
							</xsl:if>
							<xsl:if test="ns3:activityId">
								<ns:activityId>
									<xsl:value-of select="ns3:activityId" />
								</ns:activityId>
							</xsl:if>
							<!-- <ns:timestamp>
								<xsl:value-of select="current-dateTime()" />
							</ns:timestamp> -->
							<xsl:if test="ns3:storeId">
								<ns:storeId>
									<xsl:value-of select="ns3:storeId" />
								</ns:storeId>
							</xsl:if>
							<xsl:if test="ns3:dealerCode">
								<ns:dealerCode>
									<xsl:value-of select="ns3:dealerCode" />
								</ns:dealerCode>
							</xsl:if>
							<xsl:if test="ns3:scope">
								<ns:scope>
									<xsl:value-of select="ns3:scope" />
								</ns:scope>
							</xsl:if>
							<xsl:if test="ns3:interactionId">
								<ns:interactionId>
									<xsl:value-of select="ns3:interactionId" />
								</ns:interactionId>
							</xsl:if>
							<xsl:if test="ns3:masterDealerCode">
								<ns:masterDealerCode>
									<xsl:value-of select="ns3:masterDealerCode" />
								</ns:masterDealerCode>
							</xsl:if>
							<xsl:for-each select="ns3:entitlements">
								<ns:entitlements />
							</xsl:for-each>
						</ns:sender>
					</xsl:for-each>
					<xsl:for-each select="ns3:target">
						<ns:target>
							<xsl:for-each select="ns3:targetSystemId">
								<ns:targetSystemId>
									<ns:systemId>
										<xsl:value-of select="ns3:systemId" />
									</ns:systemId>
									<ns:userId>
										<xsl:value-of select="ns3:userId" />
									</ns:userId>
								</ns:targetSystemId>
							</xsl:for-each>
							<xsl:if test="ns3:userCompanyId">
								<ns:userCompanyId>
									<xsl:value-of select="ns3:userCompanyId" />
								</ns:userCompanyId>
							</xsl:if>
							<xsl:if test="ns3:customerCompanyId">
								<ns:customerCompanyId>
									<xsl:value-of select="ns3:customerCompanyId" />
								</ns:customerCompanyId>
							</xsl:if>
							<xsl:if test="ns3:servicePartnerId">
								<ns:servicePartnerId>
									<xsl:value-of select="ns3:servicePartnerId" />
								</ns:servicePartnerId>
							</xsl:if>
							<xsl:if test="ns3:transactionType">
								<ns:transactionType>
									<xsl:value-of select="ns3:transactionType" />
								</ns:transactionType>
							</xsl:if>
							<xsl:if test="ns3:customerId">
								<ns:customerId>
									<xsl:value-of select="ns3:customerId" />
								</ns:customerId>
							</xsl:if>
							<xsl:if test="ns3:customerUserId">
								<ns:customerUserId>
									<xsl:value-of select="ns3:customerUserId" />
								</ns:customerUserId>
							</xsl:if>
						</ns:target>
					</xsl:for-each>
					<xsl:for-each select="ns3:providerId">
						<ns:providerId>
							<xsl:if test="ns3:id">
								<ns:id>
									<xsl:value-of select="ns3:id" />
								</ns:id>
							</xsl:if>
							<xsl:for-each select="ns3:contextId">
								<xsl:if test=".">
									<ns:contextId>
										<xsl:value-of select="." />
									</ns:contextId>
								</xsl:if>
							</xsl:for-each>
						</ns:providerId>
					</xsl:for-each>
				</ns:header>
			</xsl:for-each>

			<ns:responseStatus>
				<xsl:attribute name="code">
            <xsl:value-of
            	select="'100'" />
            </xsl:attribute>
				<ns:detail>
					<xsl:attribute name="subStatusCode">
                <xsl:value-of
                	select="/ns3:responseStatus/@code" />
            </xsl:attribute>
					<ns:definition>
						<xsl:value-of
							select="'SUCESS'" />
					</ns:definition>
					<ns:explanation>
						<xsl:value-of
							select="/ns3:responseStatus/ns3:detail/ns3:definition" />
					</ns:explanation>
				</ns:detail>
			</ns:responseStatus>
			
		    
		    
		    
		    
		    <xsl:for-each
				select="/ns10:getProductOfferingSummaryResponse/ns14:productOffering">
				<pfx:productOffering>
					<xsl:if test="current()/@productOfferingId">
						<xsl:attribute name="productOfferingId">
                    <xsl:value-of select="current()/@productOfferingId" />
                </xsl:attribute>
					</xsl:if>
					<xsl:if test="current()/name">
						<pfx:name>
							<xsl:value-of select="current()/name" />
						</pfx:name>
					</xsl:if>
					<xsl:if test="current()/shortName">
						<pfx:shortName>
							<xsl:value-of select="current()/shortName" />
						</pfx:shortName>
					</xsl:if>
					
					<!-- testing  --> 
					<pfx:description>
						<xsl:copy-of
							select="current()/description/ancestor-or-self::*/namespace::node()" />
						<xsl:copy-of select="current()/description/@*" />
						<xsl:copy-of select="current()/description/node()" />
					</pfx:description>
					
					 
					 
					<xsl:if test="current()/offerType">
						<pfx:offerType>
							<xsl:value-of select="current()/offerType" />
						</pfx:offerType>
					</xsl:if>
					<xsl:if test="current()/offerSubType">
						<pfx:offerSubType>
							<xsl:value-of select="current()/offerSubType" />
						</pfx:offerSubType>
					</xsl:if>
					<xsl:if test="current()/offerLevel">
						<pfx:offerLevel>
							<xsl:value-of select="current()/offerLevel" />
						</pfx:offerLevel>
					</xsl:if>
					<pfx:effectivePeriod>
						<xsl:if test="string-length(effectivePeriod/startTime)>0">
							<xsl:if test="effectivePeriod/startTime">
								<pfx:startTime>
									<xsl:value-of select="effectivePeriod/startTime" />
								</pfx:startTime>
							</xsl:if>
						</xsl:if>
						<xsl:if test="string-length(effectivePeriod/endTime)>0">
							<xsl:if test="effectivePeriod/endTime">
								<pfx:endTime>
									<xsl:value-of select="effectivePeriod/endTime" />
								</pfx:endTime>
							</xsl:if>
						</xsl:if>
						<xsl:if test="effectivePeriod/usageContext">
							<pfx:usageContext>
								<xsl:value-of select="effectivePeriod/usageContext" />
							</pfx:usageContext>
						</xsl:if>
					</pfx:effectivePeriod>
					<xsl:for-each select="offeringClassification">
						<pfx:offeringClassification>
							<xsl:if test="current()/classificationCode">
								<pfx:classificationCode>
									<xsl:value-of select="current()/classificationCode" />
								</pfx:classificationCode>
							</xsl:if>
							<xsl:if test="current()/nameValue">
								<pfx:nameValue>
									<xsl:value-of select="current()/nameValue" />
								</pfx:nameValue>
							</xsl:if>
						</pfx:offeringClassification>
					</xsl:for-each>
					<xsl:if test="current()/brand">
						<pfx:brand>
							<xsl:value-of select="current()/brand" />
						</pfx:brand>
					</xsl:if>
					<xsl:if test="current()/businessUnit">
						<pfx:businessUnit>
							<xsl:value-of select="current()/businessUnit" />
						</pfx:businessUnit>
					</xsl:if>
					<xsl:if test="current()/coreOfferFamily">
						<pfx:coreOfferFamily>
							<xsl:value-of select="current()/coreOfferFamily" />
						</pfx:coreOfferFamily>
					</xsl:if>
					<xsl:if test="current()/extendedOfferFamily">
						<pfx:extendedOfferFamily>
							<xsl:value-of select="current()/extendedOfferFamily" />
						</pfx:extendedOfferFamily>
					</xsl:if>
					<xsl:for-each select="current()/productType">
						<xsl:if test=".">
							<pfx:productType>
								<xsl:value-of select="." />
							</pfx:productType>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="current()/productSubType">
						<xsl:if test=".">
							<pfx:productSubType>
								<xsl:value-of select="." />
							</pfx:productSubType>
						</xsl:if>
					</xsl:for-each>
					<xsl:if
						test="count(current()/relatedOffering)>0&#xA;and&#xA;string-length(/pfx:getProductOfferingSummaryRequest/pfx:productOffering/pfx:relatedOffering[1]/pfx:reason[1])>0">
						<pfx:relatedOffering>
							<xsl:for-each select="current()/relatedOffering/productOffering">
								<pfx:productOffering>
									<xsl:if test="current()/@productOfferingId">
										<xsl:attribute name="productOfferingId">
                                    <xsl:value-of
											select="current()/@productOfferingId" />
                                </xsl:attribute>
									</xsl:if>
									<xsl:if test="current()/name">
										<pfx:name>
											<xsl:value-of select="current()/name" />
										</pfx:name>
									</xsl:if>
									<xsl:if test="current()/shortName">
										<pfx:shortName>
											<xsl:value-of select="current()/shortName" />
										</pfx:shortName>
									</xsl:if>
									<xsl:if test="current()/offerType">
										<pfx:offerType>
											<xsl:value-of select="current()/offerType" />
										</pfx:offerType>
									</xsl:if>
									<xsl:if test="current()/offerSubType">
										<pfx:offerSubType>
											<xsl:value-of select="current()/offerSubType" />
										</pfx:offerSubType>
									</xsl:if>
									<xsl:if test="current()/offerLevel">
										<pfx:offerLevel>
											<xsl:value-of select="current()/offerLevel" />
										</pfx:offerLevel>
									</xsl:if>
									<xsl:for-each select="offeringClassification">
										<pfx:offeringClassification>
											<xsl:if test="current()/classificationCode">
												<pfx:classificationCode>
													<xsl:value-of select="current()/classificationCode" />
												</pfx:classificationCode>
											</xsl:if>
											<xsl:if test="current()/nameValue">
												<pfx:nameValue>
													<xsl:value-of select="current()/nameValue" />
												</pfx:nameValue>
											</xsl:if>
										</pfx:offeringClassification>
									</xsl:for-each>
									<xsl:if test="current()/brand">
										<pfx:brand>
											<xsl:value-of select="current()/brand" />
										</pfx:brand>
									</xsl:if>
									<xsl:if test="current()/businessUnit">
										<pfx:businessUnit>
											<xsl:value-of select="current()/businessUnit" />
										</pfx:businessUnit>
									</xsl:if>
									<xsl:if test="current()/coreOfferFamily">
										<pfx:coreOfferFamily>
											<xsl:value-of select="current()/coreOfferFamily" />
										</pfx:coreOfferFamily>
									</xsl:if>
									<xsl:if test="current()/extendedOfferFamily">
										<pfx:extendedOfferFamily>
											<xsl:value-of select="current()/extendedOfferFamily" />
										</pfx:extendedOfferFamily>
									</xsl:if>
									<xsl:for-each select="productType">
										<xsl:if test=".">
											<pfx:productType>
												<xsl:value-of select="." />
											</pfx:productType>
										</xsl:if>
									</xsl:for-each>
									<xsl:for-each select="productSubType">
										<xsl:if test=".">
											<pfx:productSubType>
												<xsl:value-of select="." />
											</pfx:productSubType>
										</xsl:if>
									</xsl:for-each>
								</pfx:productOffering>
							</xsl:for-each>
							<xsl:if test="current()/relatedOffering[1]/relationshipType">
								<pfx:relationshipType>
									<xsl:value-of select="current()/relatedOffering[1]/relationshipType" />
								</pfx:relationshipType>
							</xsl:if>
							<xsl:for-each select="relatedOffering/reason">
								<xsl:if test=".">
									<pfx:reason>
										<xsl:value-of select="." />
									</pfx:reason>
								</xsl:if>
							</xsl:for-each>
							<xsl:copy-of
								select="/pfx:getProductOfferingSummaryRequest/pfx:productOffering/pfx:relatedOffering/pfx:relationshipSpecificationValue" />
						</pfx:relatedOffering>
					</xsl:if>
					<xsl:if test="current()/priority">
						<pfx:priority>
							<xsl:value-of select="current()/priority" />
						</pfx:priority>
					</xsl:if>
					<xsl:for-each select="offeringPrice">
						<pfx:offeringPrice>
							<xsl:if test="current()/@priceListLineId">
								<xsl:attribute name="priceListLineId">
                            <xsl:value-of select="current()/@priceListLineId" />
                        </xsl:attribute>
							</xsl:if>
							<xsl:for-each select="current()/productOfferingPrice">
								<pfx:productOfferingPrice>
									<xsl:if test="current()/@productOfferingPriceId">
										<xsl:attribute name="productOfferingPriceId">
                                    <xsl:value-of
											select="current()/@productOfferingPriceId" />
                                </xsl:attribute>
									</xsl:if>
									<xsl:if test="current()/description">
										<pfx:description>
											<xsl:value-of select="current()/description" />
										</pfx:description>
									</xsl:if>
									<xsl:choose>
										<!-- <xsl:when test="contains(upper-case(../@priceListLineId), 
											$_globalVariables/ns2:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/offeringPrice.SCORE)"> -->
										<xsl:when
											test="contains((../@priceListLineId), /ns2:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/offeringPrice.SCORE)">
											<pfx:productChargeType>
												<xsl:value-of
													select="/ns2:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/offeringPrice.Final" />
											</pfx:productChargeType>
										</xsl:when>
										<xsl:when
											test="current()/chargeCode=/ns2:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/chargeType.CHAG">
											<pfx:productChargeType>
												<xsl:value-of
													select="/ns2:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/productChargeType.FULLPRICE" />
											</pfx:productChargeType>
										</xsl:when>
										<xsl:when
											test="current()/chargeCode=/ns2:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/chargeType.DISC">
											<pfx:productChargeType>
												<xsl:value-of
													select="/ns2:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/productChargeType.Discount" />
											</pfx:productChargeType>
										</xsl:when>
									</xsl:choose>
									<xsl:if
										test="/ns2:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/productChargeIncurredType.value">
										<pfx:productChargeIncurredType>
											<xsl:value-of
												select="/ns2:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/productChargeIncurredType.value" />
										</pfx:productChargeIncurredType>
									</xsl:if>
									<xsl:if test="current()/amount">
										<pfx:amount>
											<xsl:if test="current()/amount/@currencyCode">
												<xsl:attribute name="currencyCode">
                                            <xsl:value-of
													select="current()/amount/@currencyCode" />
                                        </xsl:attribute>
											</xsl:if>
											<xsl:value-of select="current()/amount" />
										</pfx:amount>
									</xsl:if>
									<pfx:oneTimeCharge>
										<xsl:variable name="tempVar1" select="current()/oneTimeCharge"></xsl:variable>
										<!-- <xsl:value-of select="if (current()/oneTimeCharge=1) then 
											&quot;true&quot; else &quot;false&quot;"/> -->
										<xsl:choose>
											<xsl:when test="$tempVar1 = '1'">
												<xsl:value-of select="true()" />
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="false()" />
											</xsl:otherwise>
										</xsl:choose>
									</pfx:oneTimeCharge>
									<xsl:if test="current()/recurringFeeFrequency">
										<pfx:recurringFeeFrequency>
											<xsl:value-of select="current()/recurringFeeFrequency" />
										</pfx:recurringFeeFrequency>
									</xsl:if>
									<xsl:for-each select="current()/specificationValue">
										<xsl:if test="current()">
											<pfx:specificationValue>
												<xsl:if test="current()/@name">
													<xsl:attribute name="name">
                                                <xsl:value-of
														select="current()/@name" />
                                            </xsl:attribute>
												</xsl:if>
												<xsl:value-of select="current()" />
											</pfx:specificationValue>
										</xsl:if>
									</xsl:for-each>
								</pfx:productOfferingPrice>
							</xsl:for-each>
							<pfx:eligibleOfferVariant>
								<xsl:if test="current()/eligibleOfferVariant[1]/sku">
									<pfx:sku>
										<xsl:value-of select="current()/eligibleOfferVariant[1]/sku" />
									</pfx:sku>
								</xsl:if>
							</pfx:eligibleOfferVariant>
							<xsl:variable name="Type_chag_var"
								select="/ns2:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/chargeType.CHAG" />
							<xsl:if test="offeringPriceType">
								<pfx:offeringPriceType>
									<xsl:value-of select="offeringPriceType" />
								</pfx:offeringPriceType>
							</xsl:if>
						</pfx:offeringPrice>
					</xsl:for-each>
					<xsl:for-each select="offeringEligibility">
						<pfx:offeringEligibility>
							<xsl:if test="string-length(current()/billingTypeCriteria[1])>0">
								<xsl:if test="current()/billingTypeCriteria[1]">
									<pfx:billingTypeCriteria>
										<xsl:value-of select="current()/billingTypeCriteria[1]" />
									</pfx:billingTypeCriteria>
								</xsl:if>
							</xsl:if>
							<pfx:channelCriteria>
								<xsl:for-each select="channelCriteria/eligibleChannel">
									<pfx:eligibleChannel>
										<xsl:if test="@referenceURI">
											<xsl:attribute name="referenceURI">
                                        <xsl:value-of
												select="@referenceURI" />
                                    </xsl:attribute>
										</xsl:if>
										<xsl:if test="@salesChannelId">
											<xsl:attribute name="salesChannelId">
                                        <xsl:value-of
												select="@salesChannelId" />
                                    </xsl:attribute>
										</xsl:if>
										<xsl:if test="current()/salesChannelCode">
											<pfx:salesChannelCode>
												<xsl:value-of select="current()/salesChannelCode" />
											</pfx:salesChannelCode>
										</xsl:if>
										<xsl:if test="current()/description">
											<pfx:description>
												<xsl:if
													test="string-length(current()/description/@languageCode)>0">
													<xsl:attribute name="languageCode">
                                                <xsl:value-of
														select="current()/description/@languageCode" />
                                            </xsl:attribute>
												</xsl:if>
												<xsl:if test="current()/description/@usageContext">
													<xsl:attribute name="usageContext">
                                                <xsl:value-of
														select="current()/description/@usageContext" />
                                            </xsl:attribute>
												</xsl:if>
												<xsl:value-of select="current()/description" />
											</pfx:description>
										</xsl:if>
										<xsl:if test="current()/salesSubChannelCode">
											<pfx:salesSubChannelCode>
												<xsl:value-of select="current()/salesSubChannelCode" />
											</pfx:salesSubChannelCode>
										</xsl:if>
										<xsl:if test="current()/subChannelCategory">
											<pfx:subChannelCategory>
												<xsl:value-of select="current()/subChannelCategory" />
											</pfx:subChannelCategory>
										</xsl:if>
									</pfx:eligibleChannel>
								</xsl:for-each>
							</pfx:channelCriteria>
						</pfx:offeringEligibility>
					</xsl:for-each>
					<xsl:for-each select="orderBehavior">
						<pfx:orderBehavior>
							<xsl:if test="salesChannelCode">
								<pfx:salesChannelCode>
									<xsl:value-of select="salesChannelCode" />
								</pfx:salesChannelCode>
							</xsl:if>
							<xsl:if test="preOrderAllowedIndicator">
								<pfx:preOrderAllowedIndicator>
									<xsl:value-of select="preOrderAllowedIndicator" />
								</pfx:preOrderAllowedIndicator>
							</xsl:if>
							<xsl:if test="string-length(preOrderAvailableTime)>0">
								<pfx:preOrderAvailableTime>
									<xsl:value-of select="preOrderAvailableTime" />
								</pfx:preOrderAvailableTime>
							</xsl:if>
							<pfx:backOrderAllowedIndicator>
								<xsl:attribute name="name">
                            <xsl:value-of select="&quot;onBackOrder&quot;" />
                        </xsl:attribute>
								<!-- <xsl:value-of select="if (backOrderAllowedIndicator=1) then 
									'true' else 'false'"/> -->
								<xsl:variable name="tempVar2"
									select="current()/backOrderAllowedIndicator"></xsl:variable>
								<xsl:choose>
									<xsl:when test="$tempVar2 = '1'">
										<xsl:value-of select="true()" />
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="false()" />
									</xsl:otherwise>
								</xsl:choose>
							</pfx:backOrderAllowedIndicator>
							<xsl:if test="string-length(saleEndTime)>0">
								<pfx:saleStartTime>
									<xsl:value-of select="saleStartTime" />
								</pfx:saleStartTime>
							</xsl:if>
							<xsl:if test="string-length(saleEndTime)>0">
								<pfx:saleEndTime>
									<xsl:value-of select="saleEndTime" />
								</pfx:saleEndTime>
							</xsl:if>
							<xsl:if test="string-length(retireTime)>0">
								<pfx:retireTime>
									<xsl:value-of select="retireTime" />
								</pfx:retireTime>
							</xsl:if>
							<pfx:offeringStatus>
								<xsl:if test="offeringStatus/@statusCode">
									<xsl:attribute name="statusCode">
                                <xsl:value-of
										select="offeringStatus/@statusCode" />
                            </xsl:attribute>
								</xsl:if>
							</pfx:offeringStatus>
						</pfx:orderBehavior>
					</xsl:for-each>
					<!-- <xsl:if test="upper-case(current()/offerSubType)= &quot;HARDGOOD&quot;"> -->
					<xsl:if test="(current()/offerSubType)= 'HARDGOOD'">
						<pfx:equipmentCharacteristics>
							<xsl:if test="current()/equipmentCharacteristics/model">
								<pfx:model>
									<xsl:value-of select="current()/equipmentCharacteristics/model" />
								</pfx:model>
							</xsl:if>
							<xsl:if test="current()/equipmentCharacteristics/manufacturer">
								<pfx:manufacturer>
									<xsl:value-of select="current()/equipmentCharacteristics/manufacturer" />
								</pfx:manufacturer>
							</xsl:if>
							<xsl:if test="current()/equipmentCharacteristics/color">
								<pfx:color>
									<xsl:value-of select="current()/equipmentCharacteristics/color" />
								</pfx:color>
							</xsl:if>
							<xsl:if test="current()/equipmentCharacteristics/memory">
								<pfx:memory>
									<xsl:value-of select="current()/equipmentCharacteristics/memory" />
								</pfx:memory>
							</xsl:if>
						</pfx:equipmentCharacteristics>
					</xsl:if>
					<xsl:for-each select="offeringVariant">
						<pfx:offeringVariant>
							<xsl:if test="current()/@offeringVariantId">
								<xsl:attribute name="offeringVariantId">
                            <xsl:value-of
									select="current()/@offeringVariantId" />
                        </xsl:attribute>
							</xsl:if>
							<xsl:if test="current()/sku">
								<pfx:sku>
									<xsl:value-of select="current()/sku" />
								</pfx:sku>
							</xsl:if>
							<xsl:for-each select="current()/offeringVariantPrice">
								<pfx:offeringVariantPrice>
									<xsl:if test="current()/@priceListLineId">
										<xsl:attribute name="priceListLineId">
                                    <xsl:value-of
											select="current()/@priceListLineId" />
                                </xsl:attribute>
									</xsl:if>
								</pfx:offeringVariantPrice>
							</xsl:for-each>
							<xsl:if test="current()/productCondition">
								<pfx:productCondition>
									<xsl:value-of select="current()/productCondition" />
								</pfx:productCondition>
							</xsl:if>
							<xsl:if test="current()/color">
								<pfx:color>
									<xsl:value-of select="current()/color" />
								</pfx:color>
							</xsl:if>
							<xsl:if test="current()/memory">
								<pfx:memory>
									<xsl:value-of select="current()/memory" />
								</pfx:memory>
							</xsl:if>
							<xsl:if test="current()/selectedSKUIndicator">
								<pfx:selectedSKUIndicator>
									<xsl:value-of select="current()/selectedSKUIndicator" />
								</pfx:selectedSKUIndicator>
							</xsl:if>
						</pfx:offeringVariant>
					</xsl:for-each>
					<!-- <xsl:if test="upper-case(current()/offerSubType)=&quot;PACKAGE&quot;"> -->
					<xsl:if test="(current()/offerSubType)=&quot;PACKAGE&quot;">
						<xsl:for-each select="current()/productOfferingComponent">
							<pfx:productOfferingComponent>
								<xsl:if test="current()/minimumComponentQuantity">
									<pfx:minimumComponentQuantity>
										<xsl:value-of select="current()/minimumComponentQuantity" />
									</pfx:minimumComponentQuantity>
								</xsl:if>
								<xsl:if test="current()/maximumComponentQuantity">
									<pfx:maximumComponentQuantity>
										<xsl:value-of select="current()/maximumComponentQuantity" />
									</pfx:maximumComponentQuantity>
								</xsl:if>
								<pfx:componentIsDefault>
									
								<!--	<xsl:value-of
										select="if (current()/componentIsDefault =1) then &quot;true&quot; else &quot;false&quot;" /> -->
									<xsl:variable name="tempVar9" select="current()/componentIsDefault"></xsl:variable>
									<xsl:choose>
										<xsl:when test="$tempVar9 = '1'">
											<xsl:value-of select="true()" />
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="false()" />
										</xsl:otherwise>
									</xsl:choose>
									
								</pfx:componentIsDefault>
								<xsl:if test="current()/advertizedPrice">
									<pfx:advertizedPrice>
										<xsl:if test="current()/advertizedPrice/@currencyCode">
											<xsl:attribute name="currencyCode">
                                        <xsl:value-of
												select="current()/advertizedPrice/@currencyCode" />
                                    </xsl:attribute>
										</xsl:if>
										<xsl:value-of select="current()/advertizedPrice" />
									</pfx:advertizedPrice>
								</xsl:if>
								
								<!-- 
								<xsl:if test="current()/packageComponentType">
									<pfx:packageComponentType>
										<xsl:value-of select="current()/packageComponentType" />
									</pfx:packageComponentType>
								</xsl:if>
								<xsl:choose>
									<xsl:when test="exists(optionGroupItem)">
										<xsl:for-each select="optionGroupItem">
											<pfx:optionGroupItem>
												<xsl:if test="isPreSelected">
													<pfx:isPreSelected>
														<xsl:if test="isPreSelected/@name">
															<xsl:attribute name="name">
                                                        <xsl:value-of
																select="isPreSelected/@name" />
                                                    </xsl:attribute>
														</xsl:if>
														<xsl:value-of select="isPreSelected" />
													</pfx:isPreSelected>
												</xsl:if>
												<xsl:if test="displayPriority">
													<pfx:displayPriority>
														<xsl:value-of select="displayPriority" />
													</pfx:displayPriority>
												</xsl:if>
												<xsl:if test="advertizedPrice">
													<pfx:advertizedPrice>
														<xsl:if test="advertizedPrice/@currencyCode">
															<xsl:attribute name="currencyCode">
                                                        <xsl:value-of
																select="advertizedPrice/@currencyCode" />
                                                    </xsl:attribute>
														</xsl:if>
														<xsl:value-of select="advertizedPrice" />
													</pfx:advertizedPrice>
												</xsl:if>
												<xsl:if test="offsetPrice">
													<pfx:offsetPrice>
														<xsl:if test="offsetPrice/@currencyCode">
															<xsl:attribute name="currencyCode">
                                                        <xsl:value-of
																select="offsetPrice/@currencyCode" />
                                                    </xsl:attribute>
														</xsl:if>
														<xsl:value-of select="offsetPrice" />
													</pfx:offsetPrice>
												</xsl:if>
												<xsl:for-each select="productOffering">
													<pfx:productOffering>
														<xsl:if test="@actionCode">
															<xsl:attribute name="actionCode">
                                                        <xsl:value-of
																select="@actionCode" />
                                                    </xsl:attribute>
														</xsl:if>
														<xsl:if test="@productOfferingId">
															<xsl:attribute name="productOfferingId">
                                                        <xsl:value-of
																select="@productOfferingId" />
                                                    </xsl:attribute>
														</xsl:if>
													</pfx:productOffering>
												</xsl:for-each>
												<xsl:for-each select="offeringVariant">
													<pfx:offeringVariant>
														<xsl:if test="@offeringVariantId">
															<xsl:attribute name="offeringVariantId">
                                                        <xsl:value-of
																select="@offeringVariantId" />
                                                    </xsl:attribute>
														</xsl:if>
													</pfx:offeringVariant>
												</xsl:for-each>
											</pfx:optionGroupItem>
										</xsl:for-each>
									</xsl:when>
									<xsl:otherwise>
										<pfx:productOffering>
											<xsl:if test="productOffering/@productOfferingId">
												<xsl:attribute name="productOfferingId">
                                            <xsl:value-of
													select="productOffering/@productOfferingId" />
                                        </xsl:attribute>
											</xsl:if>
										</pfx:productOffering>
										<pfx:offeringVariant>
											<xsl:if test="offeringVariant/@offeringVariantId">
												<xsl:attribute name="offeringVariantId">
                                            <xsl:value-of
													select="offeringVariant/@offeringVariantId" />
                                        </xsl:attribute>
											</xsl:if>
											<xsl:if test="offeringVariant/sku">
												<pfx:sku>
													<xsl:value-of select="offeringVariant/sku" />
												</pfx:sku>
											</xsl:if>
											<xsl:if test="offeringVariant/selectedSKUIndicator">
												<pfx:selectedSKUIndicator>
													<xsl:value-of select="offeringVariant/selectedSKUIndicator" />
												</pfx:selectedSKUIndicator>
											</xsl:if>
										</pfx:offeringVariant>
									</xsl:otherwise>
								</xsl:choose>
								-->
								
								
								
								
								
								<xsl:if test="lineGroupNumber">
									<pfx:lineGroupNumber>
										<xsl:value-of select="lineGroupNumber" />
									</pfx:lineGroupNumber>
								</xsl:if>
							</pfx:productOfferingComponent>
						</xsl:for-each>
					</xsl:if>
					<!-- <xsl:if test="upper-case(current()/offerSubType)= &quot;SOFTGOOD&quot;"> -->
					<xsl:if test="(current()/offerSubType)= &quot;SOFTGOOD&quot;">
						<pfx:productSpecification>
							<pfx:marketingSpecificationGroup>
								<xsl:for-each
									select="current()/productSpecification/marketingSpecificationGroup/specificationValue">
									<pfx:specificationValue>
										<xsl:if test="current()/name">
											<pfx:name>
												<xsl:value-of select="current()/name" />
											</pfx:name>
										</xsl:if>
										<xsl:if test="current()/value">
											<pfx:value>
												<xsl:value-of select="current()/value" />
											</pfx:value>
										</xsl:if>
									</pfx:specificationValue>
								</xsl:for-each>
							</pfx:marketingSpecificationGroup>
						</pfx:productSpecification>
					</xsl:if>
					<xsl:if test="isSimple">
						<pfx:standAloneOfferIndicator>
							<xsl:if test="isSimple/@name">
								<xsl:attribute name="name">
                            <xsl:value-of select="isSimple/@name" />
                        </xsl:attribute>
							</xsl:if>
							<xsl:value-of select="isSimple" />
						</pfx:standAloneOfferIndicator>
					</xsl:if>
					<xsl:if test="advertizedPrice">
						<pfx:advertizedPrice>
							<xsl:if test="advertizedPrice/@currencyCode">
								<xsl:attribute name="currencyCode">
                            <xsl:value-of
									select="advertizedPrice/@currencyCode" />
                        </xsl:attribute>
							</xsl:if>
							<xsl:value-of select="advertizedPrice" />
						</pfx:advertizedPrice>
					</xsl:if>
					<xsl:if test="breakableIndicator">
						<pfx:breakableIndicator>
							<xsl:if test="breakableIndicator/@name">
								<xsl:attribute name="name">
                            <xsl:value-of select="breakableIndicator/@name" />
                        </xsl:attribute>
							</xsl:if>
							<xsl:value-of select="breakableIndicator" />
						</pfx:breakableIndicator>
					</xsl:if>
				</pfx:productOffering>
			</xsl:for-each>
			<xsl:if test="/ns10:getProductOfferingSummaryResponse/@contextId">
				<pfx:cartId>
					<xsl:value-of select="/ns10:getProductOfferingSummaryResponse/@contextId" />
				</pfx:cartId>
			</xsl:if>
			<xsl:if test="/ns10:getProductOfferingSummaryResponse/ns10:currentPage">
				<pfx:currentPage>
					<xsl:value-of
						select="/ns10:getProductOfferingSummaryResponse/ns10:currentPage" />
				</pfx:currentPage>
			</xsl:if>
			<xsl:if
				test="/ns10:getProductOfferingSummaryResponse/ns10:totalProductOfferingCount">
				<pfx:totalResultCount>
					<xsl:value-of
						select="/ns10:getProductOfferingSummaryResponse/ns10:totalProductOfferingCount" />
				</pfx:totalResultCount>
			</xsl:if>
			<pfx:isSearchComplete>
				<!-- <xsl:value-of select="if((/ns10:getProductOfferingSummaryResponse/ns10:totalPage 
					- (/ns10:getProductOfferingSummaryResponse/ns10:currentPage * $Start/pfx:getProductOfferingSummaryRequest/pfx:resultSize) 
					&lt; 0) or&#xA; string-length(/ns10:getProductOfferingSummaryResponse/@contextId)>0)&#xA;then 
					true()&#xA;else false()"/> -->
				<xsl:variable name="tempIsSearchComplete"></xsl:variable>
				<xsl:choose>
					<xsl:when
						test="((/ns10:getProductOfferingSummaryResponse/ns10:totalPage - (/ns10:getProductOfferingSummaryResponse/ns10:currentPage * /pfx:getProductOfferingSummaryRequest/pfx:resultSize) &lt; 0) or string-length(/ns10:getProductOfferingSummaryResponse/@contextId) >0 )">
						<xsl:value-of select="true()" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="false()" />
					</xsl:otherwise>
				</xsl:choose>




			</pfx:isSearchComplete>
		</pfx:getProductOfferingSummaryResponse>
	</xsl:template>
</xsl:stylesheet>