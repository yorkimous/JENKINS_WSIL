<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:pfx8="http://services.tmobile.com/ProductManagement/ProductOfferingSummaryWSIL" 
    xmlns:v1="http://services.tmobile.com/ProductManagement/ProductOfferingSummaryWSIL/V1" 
    xmlns:pfx2="http://www.t-mobile.com/schemas/wsil/common/bwexceptionschemamapper" 
    xmlns:ns7="http://www.tibco.com/pe/DeployedVarsType" 
    xmlns:ns3="http://service.ericsson.com/base" 
    xmlns:ns10="http://service.ericsson.com/ProductManagement/ecmServices" 
    xmlns:v5="http://services.tmobile.com/base"
    xmlns:base="http://service.ericsson.com/base"
    version="2.0">
    <xsl:strip-space elements="*"/>
    <xsl:output method="xml"  />
    <!-- standalone="yes"
        omit-xml-declaration="no" -->

    <xsl:template match="/">

	<!-- 
	<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
	
   <soapenv:Header/>
   <soapenv:Body>
   <ns10:getProductOfferingSummary>
 -->

	
	
	
	
        <ns10:getProductOfferingSummaryRequest>

            <xsl:if test="/v1:getProductOfferingSummaryRequest/@serviceTransactionId">
                <xsl:attribute name="serviceTransactionId">
                    <xsl:value-of select="/v1:getProductOfferingSummaryRequest/@serviceTransactionId"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="/v1:getProductOfferingSummaryRequest/@version">
                <xsl:attribute name="version">
                    <xsl:value-of select="/v1:getProductOfferingSummaryRequest/@version"/>
                </xsl:attribute>
            </xsl:if>
           <!--
            <base:header>
                <xsl:copy-of select="/v1:getProductOfferingSummaryRequest/v5:header"/>
            </base:header>
           --> 
            
            <xsl:for-each select="/v1:getProductOfferingSummaryRequest/v5:header">
                <base:header>
                    <xsl:for-each select="v5:sender">
                        <base:sender>
                            <base:senderId>
                                <xsl:value-of select="v5:senderId" />
                            </base:senderId>
                            <base:channelId>
                                <xsl:value-of select="v5:channelId" />
                            </base:channelId>
                            <base:applicationId>
                                <xsl:value-of select="v5:applicationId" />
                            </base:applicationId>
                            <xsl:if test="v5:applicationUserId">
                                <base:applicationUserId>
                                    <xsl:value-of select="v5:applicationUserId" />
                                </base:applicationUserId>
                            </xsl:if>
                            <xsl:if test="v5:sessionId">
                                <base:sessionId>
                                    <xsl:value-of select="v5:sessionId" />
                                </base:sessionId>
                            </xsl:if>
                            <xsl:if test="v5:workflowId">
                                <base:workflowId>
                                    <xsl:value-of select="v5:workflowId" />
                                </base:workflowId>
                            </xsl:if>
                            <xsl:if test="v5:activityId">
                                <base:activityId>
                                    <xsl:value-of select="v5:activityId" />
                                </base:activityId>
                            </xsl:if>
                            
                            <xsl:if test="v5:storeId">
                                <base:storeId>
                                    <xsl:value-of select="v5:storeId" />
                                </base:storeId>
                            </xsl:if>
                            <xsl:if test="v5:dealerCode">
                                <base:dealerCode>
                                    <xsl:value-of select="v5:dealerCode" />
                                </base:dealerCode>
                            </xsl:if>
                            <xsl:if test="v5:scope">
                                <base:scope>
                                    <xsl:value-of select="v5:scope" />
                                </base:scope>
                            </xsl:if>
                            <xsl:if test="v5:interactionId">
                                <base:interactionId>
                                    <xsl:value-of select="v5:interactionId" />
                                </base:interactionId>
                            </xsl:if>
                            <xsl:if test="v5:masterDealerCode">
                                <base:masterDealerCode>
                                    <xsl:value-of select="v5:masterDealerCode" />
                                </base:masterDealerCode>
                            </xsl:if>
                            <!--
                            <xsl:for-each select="ns3:entitlements">
                                <ns:entitlements />
                            </xsl:for-each>
                            -->
                        </base:sender>
                    </xsl:for-each>
                    <xsl:for-each select="v5:target">
                        <base:target>
                            <xsl:for-each select="v5:targetSystemId">
                                <base:targetSystemId>
                                    <base:systemId>
                                        <xsl:value-of select="v5:systemId" />
                                    </base:systemId>
                                    <base:userId>
                                        <xsl:value-of select="v5:userId" />
                                    </base:userId>
                                </base:targetSystemId>
                            </xsl:for-each>
                            <xsl:if test="v5:userCompanyId">
                                <base:userCompanyId>
                                    <xsl:value-of select="v5:userCompanyId" />
                                </base:userCompanyId>
                            </xsl:if>
                            <xsl:if test="v5:customerCompanyId">
                                <base:customerCompanyId>
                                    <xsl:value-of select="v5:customerCompanyId" />
                                </base:customerCompanyId>
                            </xsl:if>
                            <xsl:if test="v5:servicePartnerId">
                                <base:servicePartnerId>
                                    <xsl:value-of select="v5:servicePartnerId" />
                                </base:servicePartnerId>
                            </xsl:if>
                            <xsl:if test="v5:transactionType">
                                <base:transactionType>
                                    <xsl:value-of select="v5:transactionType" />
                                </base:transactionType>
                            </xsl:if>
                            <xsl:if test="v5:customerId">
                                <base:customerId>
                                    <xsl:value-of select="v5:customerId" />
                                </base:customerId>
                            </xsl:if>
                            <xsl:if test="v5:customerUserId">
                                <base:customerUserId>
                                    <xsl:value-of select="v5:customerUserId" />
                                </base:customerUserId>
                            </xsl:if>
                        </base:target>
                    </xsl:for-each>
                    <xsl:for-each select="v5:providerId">
                        <base:providerId>
                            <xsl:if test="v5:id">
                                <base:id>
                                    <xsl:value-of select="v5:id" />
                                </base:id>
                            </xsl:if>
                            <xsl:for-each select="v5:contextId">
                                <xsl:if test=".">
                                    <base:contextId>
                                        <xsl:value-of select="." />
                                    </base:contextId>
                                </xsl:if>
                            </xsl:for-each>
                        </base:providerId>
                    </xsl:for-each>
                </base:header>
            </xsl:for-each>
            

            <xsl:choose>
                <xsl:when test="string-length(/v1:getProductOfferingSummaryRequest/v1:requestDate) > 0">
                    <ns10:requestDate>
                        <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:requestDate"/>
                    </ns10:requestDate>
                </xsl:when>
               <!--  <xsl:otherwise>
                <ns10:requestDate>
                    <xsl:value-of select="current-dateTime()"/>
                </ns10:requestDate>
            </xsl:otherwise> -->
            </xsl:choose>
            <ns10:searchContext>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:postalCodeCriteria/v1:eligiblePostalCode">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;ZIP&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:cityCriteria/v1:eligibleCity">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;CITY&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:stateCriteria/v1:eligibleState">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;STATE&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:countyCriteria/v1:eligibleCountyName">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;COUNTY&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:countryCriteria">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;COUNTRY&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:customerGroup[1]) > 0">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalContext.CUSTOMERTYPE"/>
                        </xsl:attribute>
                        <ns10:value>
                           <!-- <xsl:value-of select="if(/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:customerGroup[1]=&quot;SpecialOther&quot;)&#xA;then&#xA;&quot;SpecialOrOther&quot;&#xA;else&#xA;/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:customerGroup[1]"/> -->
                            <xsl:variable name="tempVar1" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:customerGroup[1]"></xsl:variable>
                            <!-- <xsl:value-of select="if (current()/oneTimeCharge=1) then 
											&quot;true&quot; else &quot;false&quot;"/> -->
                            <xsl:choose>
                                <xsl:when test="$tempVar1 = 'SpecialOther'">
                                    <xsl:value-of select="'SpecialOrOther'" />
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="$tempVar1" />
                                </xsl:otherwise>
                            </xsl:choose>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:if>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:channelCriteria/v1:eligibleChannel[string-length(v1:salesChannelCode)!=0]">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="'CHANNEL'"/>
                        </xsl:attribute>
                        <xsl:if test="v1:salesChannelCode">
                            <ns10:value>
                                <xsl:value-of select="v1:salesChannelCode"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:customerSegmentCriteria/v1:eligibleSegment[v1:name=&quot;ASSISTANCEPROGRAM&quot;]">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;ASSISTANCEPROGRAM&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="v1:value">
                            <ns10:value>
                                <xsl:value-of select="v1:value"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:customerSegmentCriteria[v1:eligibleSegment/v1:name=&quot;TESTINDICATOR&quot;]">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;TESTINDICATOR&quot;"/>
                        </xsl:attribute>
                        <xsl:variable name="var" select="current()/v1:eligibleSegment/v1:name"/>
                        <xsl:if test="current()/v1:eligibleSegment/v1:value[$var=&quot;TESTINDICATOR&quot;]">
                            <ns10:value>
                                <xsl:value-of select="current()/v1:eligibleSegment/v1:value[$var=&quot;TESTINDICATOR&quot;]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:customerSegmentCriteria[v1:eligibleSegment/v1:name=&quot;IDVERIFICATION&quot;]">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;IDVERIFICATION&quot;"/>
                        </xsl:attribute>
                        <xsl:variable name="var2" select="current()/v1:eligibleSegment/v1:name"/>
                        <xsl:if test="current()/v1:eligibleSegment/v1:value[$var2=&quot;IDVERIFICATION&quot;]">
                            <ns10:value>
                                <xsl:value-of select="current()/v1:eligibleSegment/v1:value[$var2=&quot;IDVERIFICATION&quot;]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:channelCriteria/v1:eligibleChannel[string-length(v1:salesSubChannelCode)>0]">
                    <ns10:additionalContext>
                        <xsl:variable name="var3" select="current()/v1:salesSubChannelCode"/>
                       <!--
                        <xsl:variable name="salesSubChannelCode" select="substring-after(tokenize(/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/salesSubChannelCode, &quot;;&quot;)[substring-before(., &quot;:&quot;) = $var3 ],&quot;:&quot;)"/>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;SUBCHANNEL&quot;"/>
                        </xsl:attribute>
                        <xsl:choose>
                            <xsl:when test="string-length($salesSubChannelCode)>0">
                                <ns10:value>
                                    <xsl:value-of select="$salesSubChannelCode"/>
                                </ns10:value>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:if test="v1:salesSubChannelCode">
                                    <ns10:value>
                                        <xsl:value-of select="v1:salesSubChannelCode"/>
                                    </ns10:value>
                                </xsl:if>
                            </xsl:otherwise>
                        </xsl:choose>
                        -->
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:channelCriteria/v1:eligibleChannel[string-length(v1:subChannelCategory)>0]">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;SUBCHANNELCATEGORY&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="v1:subChannelCategory">
                            <ns10:value>
                                <xsl:value-of select="v1:subChannelCategory"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:customerSegmentCriteria[v1:eligibleSegment/v1:name=&quot;SPECIALTREATMENT&quot;]">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;SPECIALTREATMENT&quot;"/>
                        </xsl:attribute>
                        <xsl:variable name="var4" select="current()/v1:eligibleSegment/v1:name"/>
                        <xsl:choose>
                            <xsl:when test="string-length(current()/v1:eligibleSegment/v1:value[$var4=&quot;SPECIALTREATMENT&quot;])=0">
                                <ns10:value>
                                    <xsl:value-of select="'Internal Use Company Use'"/>
                                </ns10:value>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:variable name="var5" select="current()/v1:eligibleSegment/v1:name"/>
                                <xsl:if test="current()/v1:eligibleSegment/v1:value[$var5=&quot;SPECIALTREATMENT&quot;]">
                                    <ns10:value>
                                        <xsl:value-of select="current()/v1:eligibleSegment/v1:value[$var5=&quot;SPECIALTREATMENT&quot;]"/>
                                    </ns10:value>
                                </xsl:if>
                            </xsl:otherwise>
                        </xsl:choose>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:customerId">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;CUSTOMERID&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:financialAccountNumber">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;BAN&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:lineOfServiceId)>0&#xA;or&#xA;string-length(/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:MSISDN)>0">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;MSISDN&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:MSISDN">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:MSISDN"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalContext>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:lineOfServiceId)>0">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;LINEOFSERVICEID&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:lineOfServiceId"/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:if>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:cartId">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;CARTID&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:orderType">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;ORDERTYPE&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:storeCriteria/v1:eligibleStore">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;STOREID&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[v1:specificationValue/@name=&quot;CONTRACTHOLDER&quot;]">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;CONTRACTHOLDER&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="v1:specificationValue[@name=&quot;CONTRACTHOLDER&quot;]">
                            <ns10:value>
                                <xsl:value-of select="v1:specificationValue[@name=&quot;CONTRACTHOLDER&quot;]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:contractTypeCriteria/v1:includedContractType">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;CONTRACTCATEGORY&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:customerGroup">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;CUSTOMERGROUP&quot;"/>
                        </xsl:attribute>
                        <xsl:if test=".">
                            <ns10:value>
                                <xsl:value-of select="."/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:specificationGroup/v1:specificationValue[@name='LASTPURCHASEDDATEFLAG']">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;LASTPURCHASEDDATEFLAG&quot;"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="."/>
                        </ns10:value>
                    </ns10:additionalContext>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:customerSegmentCriteria[v1:eligibleSegment/v1:name=&quot;BusinessUnit&quot;]">
                    <ns10:additionalContext>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;BUSINESSUNIT&quot;"/>
                        </xsl:attribute>
                        <xsl:variable name="var6" select="current()/v1:eligibleSegment/v1:name"/>
                        <xsl:if test="current()/v1:eligibleSegment/v1:value[$var6=&quot;BusinessUnit&quot;]">
                            <ns10:value>
                                <xsl:value-of select="current()/v1:eligibleSegment/v1:value[$var6=&quot;BusinessUnit&quot;]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalContext>
                </xsl:for-each>
            </ns10:searchContext>
            <ns10:searchCriteria>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:priceRange/v1:priceFrom[@currencyCode='USD']) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.PRICEFROM"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:priceRange/v1:priceFrom[@currencyCode='USD']">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:priceRange/v1:priceFrom[@currencyCode='USD']"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:priceRange/v1:priceTo[@currencyCode='USD']) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.PRICETO"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:priceRange/v1:priceTo[@currencyCode='USD']">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:priceRange/v1:priceTo[@currencyCode='USD']"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:name) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.OFFERNAME"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:name">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:name"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:description[@languageCode='en']) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.DESCRIPTION"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:description[@languageCode='en']">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:description[@languageCode='en']"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:shortDescription[@languageCode='en']) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.SHORTDESCRIPTION"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:shortDescription[@languageCode='en']">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:shortDescription[@languageCode='en']"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                
                <!--
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.LONGDESCRIPTION"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;ALL&quot;)&#xA;then &quot;ALL&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;Care&quot;)&#xA;then &quot;CC&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;FinancePartners&quot;)&#xA;then &quot;FIN_PARTNERS&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;InPerson&quot;)&#xA;then &quot;IN_PERSON&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;IVR&quot;)&#xA;then &quot;IVR&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;NonFinanciePartners&quot;)&#xA;then &quot;NON_FIN_PARTNERS&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;SelfServiceAuthenticated&quot;)&#xA;then &quot;OD&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;OverThePhone&quot;)&#xA;then &quot;OTP&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;Telesales&quot;)&#xA;then &quot;TELESALES&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;Unassisted&quot;)&#xA;then &quot;UNASSISTED&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;SelfServiceAnonymous&quot;)&#xA;then &quot;WEB&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode=&quot;FullService&quot;)&#xA;then &quot;FullService&quot;&#xA;else &#xA;/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:longDescription[v1:languageCode='en']/v1:salesChannelCode"/>
                        </ns10:value>
                    </ns10:additionalCriteria>
                </xsl:if>
                
                
                -->
                
                
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:offerSubType) >0&#xA;and &#xA;string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:relatedOffering[1]/v1:reason[1])&lt;1">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.OFFERSUBTYPE"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:offerSubType">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:offerSubType"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:equipmentCharacteristics/v1:model) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.MODEL"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:equipmentCharacteristics/v1:model">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:equipmentCharacteristics/v1:model"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:equipmentCharacteristics/v1:manufacturer) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.MANUFACTURER"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:equipmentCharacteristics/v1:manufacturer">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:equipmentCharacteristics/v1:manufacturer"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:equipmentCharacteristics/v1:color) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.COLOR"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:equipmentCharacteristics/v1:color">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:equipmentCharacteristics/v1:color"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:productType[1]) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.PRODUCTTYPE"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:productType[1]">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:productType[1]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="count(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:productSubType) > 0">
                    <xsl:for-each select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:productSubType">
                        <ns10:additionalCriteria>
                            <xsl:attribute name="name">
                                <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.PRODUCSUBTTYPE"/>
                            </xsl:attribute>
                            <xsl:choose>
                                <xsl:when test=".=/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/productSubType.CSOM.value.SimCard">
                                    <ns10:value>
                                        <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/productSubType.value.Sim"/>
                                    </ns10:value>
                                </xsl:when>
                                <xsl:when test=".=/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/productSubType.CSOM.value.Wearable">
                                    <ns10:value>
                                        <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/productSubType.value.Wearables"/>
                                    </ns10:value>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:if test=".">
                                        <ns10:value>
                                            <xsl:value-of select="."/>
                                        </ns10:value>
                                    </xsl:if>
                                </xsl:otherwise>
                            </xsl:choose>
                        </ns10:additionalCriteria>
                    </xsl:for-each>
                </xsl:if>
                <!--
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:billingTypeCriteria[1]) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.PAYMENTOPTION"/>
                        </xsl:attribute>
                        <ns10:value>
                            <xsl:value-of select="if(/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:billingTypeCriteria[1]=&quot;Prepaid&quot;)&#xA;then &#xA;&quot;PREPAID&quot;&#xA;else if(/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:billingTypeCriteria[1]=&quot;Postpaid&quot;)&#xA;then &#xA;&quot;POSTPAID&quot;&#xA;else &#xA;/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:billingTypeCriteria[1]"/>
                        </ns10:value>
                    </ns10:additionalCriteria>
                </xsl:if>
                -->
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:brand[1]) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.BRAND"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:brand[1]">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:brand[1]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:businessUnit[1]) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="/ns7:GlobalVariables/ProductOfferingSummaryWSIL/GetProductOfferingSummary/additionalCriteria.BusinessUnit"/>
                        </xsl:attribute>
                        <xsl:choose>
                            <xsl:when test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:businessUnit='Magenta'">
                                <ns10:value>
                                    <xsl:value-of select="'T-Mobile'"/>
                                </ns10:value>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:businessUnit">
                                    <ns10:value>
                                        <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:businessUnit"/>
                                    </ns10:value>
                                </xsl:if>
                            </xsl:otherwise>
                        </xsl:choose>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:offerType[1]) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;SERVICETYPE&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:offerType">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:offerType"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]) > 0&#xA;and &#xA;/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]/@name=&quot;productSubType&quot;">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;PRODUCTSUBTYPE&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]) > 0&#xA;and &#xA;/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]/@name=&quot;ProductSubTypeClass&quot;">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;PRODUCTSUBTYPECLASS&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]) > 0&#xA;and&#xA;/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]/@name=&quot;OfferFamily&quot;">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;OFFERFAMILY&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[1]/v1:specificationValue[1]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:tacCode[1]) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;TAC&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:tacCode[1]">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:tacCode[1]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:SKU) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;SKU&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:SKU">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:SKU"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:orderType) > 0">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;ORDERTYPE&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:orderType">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:searchContext/v1:orderType"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/@productOfferingId[1]) > 0&#xA;and&#xA;/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:relatedOffering[1]/v1:reason[1]=&quot;Compatible&quot;&#xA;and &#xA;/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:relatedOffering[1]/v1:relationshipType=&quot;CrossSell&quot;">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;COMPATIBLE_WITH&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/@productOfferingId">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/@productOfferingId"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:productOffering/@productOfferingId[1]) > 0&#xA;and&#xA;not (/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:relatedOffering[1]/v1:reason[1]=&quot;Compatible&quot;&#xA;and &#xA;/v1:getProductOfferingSummaryRequest/v1:productOffering/v1:relatedOffering[1]/v1:relationshipType=&quot;CrossSell&quot;)">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;OFFERID&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:productOffering/@productOfferingId">
                            <ns10:value>
                                <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:productOffering/@productOfferingId"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:if>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[v1:specificationValue/@name=&quot;INCLUDES_VOICE&quot;]">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;INCLUDES_VOICE&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="v1:specificationValue[@name=&quot;INCLUDES_VOICE&quot;]">
                            <ns10:value>
                                <xsl:value-of select="v1:specificationValue[@name=&quot;INCLUDES_VOICE&quot;]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[v1:specificationValue/@name=&quot;INCLUDES_DATA&quot;]">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;INCLUDES_DATA&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="v1:specificationValue[@name=&quot;INCLUDES_DATA&quot;]">
                            <ns10:value>
                                <xsl:value-of select="v1:specificationValue[@name=&quot;INCLUDES_DATA&quot;]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[v1:specificationValue/@name=&quot;INCLUDES_TEXT&quot;]">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;INCLUDES_TEXT&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="v1:specificationValue[@name=&quot;INCLUDES_TEXT&quot;]">
                            <ns10:value>
                                <xsl:value-of select="v1:specificationValue[@name=&quot;INCLUDES_TEXT&quot;]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:for-each>
                <xsl:for-each xmlns:xsl="http://www.w3.org/1999/XSL/Transform" select="/v1:getProductOfferingSummaryRequest/v1:productOfferingEligibility/v1:specificationGroup[v1:specificationValue/@name=&quot;COMPATIBLE_WITH_TAC&quot;]">
                    <ns10:additionalCriteria>
                        <xsl:attribute name="name">
                            <xsl:value-of select="&quot;COMPATIBLE_WITH_TAC&quot;"/>
                        </xsl:attribute>
                        <xsl:if test="v1:specificationValue[@name=&quot;COMPATIBLE_WITH_TAC&quot;]">
                            <ns10:value>
                                <xsl:value-of select="v1:specificationValue[@name=&quot;COMPATIBLE_WITH_TAC&quot;]"/>
                            </ns10:value>
                        </xsl:if>
                    </ns10:additionalCriteria>
                </xsl:for-each>
            </ns10:searchCriteria>
            <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:pageNumber)>0">
                <ns10:requestedPage>
                    <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:pageNumber"/>
                </ns10:requestedPage>
            </xsl:if>
            <xsl:if xmlns:xsl="http://www.w3.org/1999/XSL/Transform" test="string-length(/v1:getProductOfferingSummaryRequest/v1:resultSize)>0">
                <ns10:pageSize>
                    <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:resultSize"/>
                </ns10:pageSize>
            </xsl:if>
            <xsl:if test="/v1:getProductOfferingSummaryRequest/v1:sortField">
                <ns10:sortField>
                    <xsl:value-of select="/v1:getProductOfferingSummaryRequest/v1:sortField"/>
                </ns10:sortField>
            </xsl:if>
        </ns10:getProductOfferingSummaryRequest>
   
 <!-- 
 </ns10:getProductOfferingSummary>
   </soapenv:Body>
</soapenv:Envelope>
   
  --> 
   
    </xsl:template>
</xsl:stylesheet>
