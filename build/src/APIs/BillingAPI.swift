//
// BillingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class BillingAPI {
    
    
    
    
    
    /**
     
     Get a report of the billable usages (e.g. licenses and devices utilized) for a given period.
     
     - parameter startDate: (query) The period start date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ 
     - parameter endDate: (query) The period end date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBillingReportsBillableusage(startDate: Date, endDate: Date, completion: @escaping ((_ data: BillingUsageReport?,_ error: Error?) -> Void)) {
        let requestBuilder = getBillingReportsBillableusageWithRequestBuilder(startDate: startDate, endDate: endDate)
        requestBuilder.execute { (response: Response<BillingUsageReport>?, error) -> Void in
            do {
                if let e = error {
                    completion(nil, e)
                } else if let r = response {
                    try requestBuilder.decode(r)
                    completion(response?.body, error)
                } else {
                    completion(nil, error)
                }
            } catch {
                completion(nil, error)
            }
        }
    }

    /**
     
     Get a report of the billable usages (e.g. licenses and devices utilized) for a given period.
     
     - GET /api/v2/billing/reports/billableusage
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "endDate" : "2000-01-23T04:56:07.000+0000",
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "id" : "aeiou",
  "usages" : [ {
    "name" : "aeiou",
    "resources" : [ {
      "date" : "2000-01-23T04:56:07.000+0000",
      "name" : "aeiou"
    } ],
    "totalUsage" : "aeiou"
  } ],
  "startDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter startDate: (query) The period start date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ 
     - parameter endDate: (query) The period end date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ 

     - returns: RequestBuilder<BillingUsageReport> 
     */
    open class func getBillingReportsBillableusageWithRequestBuilder(startDate: Date, endDate: Date) -> RequestBuilder<BillingUsageReport> {
        let path = "/api/v2/billing/reports/billableusage"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "startDate": startDate.encodeToJSON(), 
            
            "endDate": endDate.encodeToJSON()
            
        ])

        let requestBuilder: RequestBuilder<BillingUsageReport>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Get the billing overview for an organization that is managed by a partner.
     
     - parameter trustorOrgId: (path) The organization ID of the trustor (customer) organization. 
     - parameter billingPeriodIndex: (query) 0 for active period (overview data may change until period closes). 1 for prior completed billing period. 2 for two billing cycles prior, and so on. (optional, default to 0)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBillingTrusteebillingoverviewTrustorOrgId(trustorOrgId: String, billingPeriodIndex: Int? = nil, completion: @escaping ((_ data: TrusteeBillingOverview?,_ error: Error?) -> Void)) {
        let requestBuilder = getBillingTrusteebillingoverviewTrustorOrgIdWithRequestBuilder(trustorOrgId: trustorOrgId, billingPeriodIndex: billingPeriodIndex)
        requestBuilder.execute { (response: Response<TrusteeBillingOverview>?, error) -> Void in
            do {
                if let e = error {
                    completion(nil, e)
                } else if let r = response {
                    try requestBuilder.decode(r)
                    completion(response?.body, error)
                } else {
                    completion(nil, error)
                }
            } catch {
                completion(nil, error)
            }
        }
    }

    /**
     
     Get the billing overview for an organization that is managed by a partner.
     
     - GET /api/v2/billing/trusteebillingoverview/{trustorOrgId}
     - Tax Disclaimer: Prices returned by this API do not include applicable taxes. It is the responsibility of the customer to pay all taxes that are appropriate in their jurisdiction. See the PureCloud API Documentation in the Developer Center for more information about this API: https://developer.mypurecloud.com/api/rest/v2/
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "inRampPeriod" : true,
  "billingPeriodEndDate" : "2000-01-23T04:56:07.000+0000",
  "selfUri" : "aeiou",
  "contractEndDate" : "2000-01-23T04:56:07.000+0000",
  "contractAmendmentDate" : "2000-01-23T04:56:07.000+0000",
  "billingPeriodStartDate" : "2000-01-23T04:56:07.000+0000",
  "rampPeriodStartDate" : "2000-01-23T04:56:07.000+0000",
  "contractEffectiveDate" : "2000-01-23T04:56:07.000+0000",
  "subscriptionType" : "aeiou",
  "rampPeriodEndDate" : "2000-01-23T04:56:07.000+0000",
  "organization" : {
    "id" : "aeiou"
  },
  "name" : "aeiou",
  "currency" : "aeiou",
  "id" : "aeiou",
  "usages" : [ {
    "overagePrice" : "aeiou",
    "prepayQuantity" : "aeiou",
    "isCancellable" : true,
    "name" : "aeiou",
    "partNumber" : "aeiou",
    "usageQuantity" : "aeiou",
    "unitOfMeasureType" : "aeiou",
    "usageNotes" : "aeiou",
    "grouping" : "aeiou",
    "prepayPrice" : "aeiou"
  } ],
  "enabledProducts" : [ "aeiou" ]
}}]
     
     - parameter trustorOrgId: (path) The organization ID of the trustor (customer) organization. 
     - parameter billingPeriodIndex: (query) 0 for active period (overview data may change until period closes). 1 for prior completed billing period. 2 for two billing cycles prior, and so on. (optional, default to 0)

     - returns: RequestBuilder<TrusteeBillingOverview> 
     */
    open class func getBillingTrusteebillingoverviewTrustorOrgIdWithRequestBuilder(trustorOrgId: String, billingPeriodIndex: Int? = nil) -> RequestBuilder<TrusteeBillingOverview> {
        var path = "/api/v2/billing/trusteebillingoverview/{trustorOrgId}"
        let trustorOrgIdPreEscape = "\(trustorOrgId)"
        let trustorOrgIdPostEscape = trustorOrgIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{trustorOrgId}", with: trustorOrgIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "billingPeriodIndex": billingPeriodIndex?.encodeToJSON()
            
        ])

        let requestBuilder: RequestBuilder<TrusteeBillingOverview>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

}
