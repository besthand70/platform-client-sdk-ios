//
// JourneyAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class JourneyAPI {
    
    
    
    /**
     
     Retrieve a single action target.
     
     - parameter actionTargetId: (path) ID of the action target. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getJourneyActiontarget(actionTargetId: String, completion: @escaping ((_ data: ActionTarget?,_ error: Error?) -> Void)) {
        let requestBuilder = getJourneyActiontargetWithRequestBuilder(actionTargetId: actionTargetId)
        requestBuilder.execute { (response: Response<ActionTarget>?, error) -> Void in
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
     
     Retrieve a single action target.
     
     - GET /api/v2/journey/actiontargets/{actionTargetId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "supportedMediaTypes" : [ "aeiou" ],
  "shortAbandonThreshold" : 123,
  "userData" : [ {
    "value" : "aeiou",
    "key" : "aeiou"
  } ],
  "createdDate" : "2000-01-23T04:56:07.000+0000",
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "modifiedDate" : "2000-01-23T04:56:07.000+0000",
  "description" : "aeiou",
  "id" : "aeiou",
  "state" : "aeiou",
  "serviceLevel" : {
    "percentage" : 1.3579000000000001069366817318950779736042022705078125,
    "durationMs" : 123456789
  }
}}]
     
     - parameter actionTargetId: (path) ID of the action target. 

     - returns: RequestBuilder<ActionTarget> 
     */
    open class func getJourneyActiontargetWithRequestBuilder(actionTargetId: String) -> RequestBuilder<ActionTarget> {
        var path = "/api/v2/journey/actiontargets/{actionTargetId}"
        let actionTargetIdPreEscape = "\(actionTargetId)"
        let actionTargetIdPostEscape = actionTargetIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{actionTargetId}", with: actionTargetIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ActionTarget>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Retrieve all action targets.
     
     - parameter pageNumber: (query) Page number (optional, default to 1)
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getJourneyActiontargets(pageNumber: Int? = nil, pageSize: Int? = nil, completion: @escaping ((_ data: ActionTargetListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getJourneyActiontargetsWithRequestBuilder(pageNumber: pageNumber, pageSize: pageSize)
        requestBuilder.execute { (response: Response<ActionTargetListing>?, error) -> Void in
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
     
     Retrieve all action targets.
     
     - GET /api/v2/journey/actiontargets
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "pageNumber" : 123,
  "entities" : [ {
    "supportedMediaTypes" : [ "aeiou" ],
    "shortAbandonThreshold" : 123,
    "userData" : [ {
      "value" : "aeiou",
      "key" : "aeiou"
    } ],
    "createdDate" : "2000-01-23T04:56:07.000+0000",
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "modifiedDate" : "2000-01-23T04:56:07.000+0000",
    "description" : "aeiou",
    "id" : "aeiou",
    "state" : "aeiou",
    "serviceLevel" : {
      "percentage" : 1.3579000000000001069366817318950779736042022705078125,
      "durationMs" : 123456789
    }
  } ],
  "firstUri" : "aeiou",
  "lastUri" : "aeiou",
  "selfUri" : "aeiou",
  "pageSize" : 123,
  "previousUri" : "aeiou",
  "nextUri" : "aeiou"
}}]
     
     - parameter pageNumber: (query) Page number (optional, default to 1)
     - parameter pageSize: (query) Page size (optional, default to 25)

     - returns: RequestBuilder<ActionTargetListing> 
     */
    open class func getJourneyActiontargetsWithRequestBuilder(pageNumber: Int? = nil, pageSize: Int? = nil) -> RequestBuilder<ActionTargetListing> {
        let path = "/api/v2/journey/actiontargets"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "pageNumber": pageNumber?.encodeToJSON(), 
            
            "pageSize": pageSize?.encodeToJSON()
            
        ])

        let requestBuilder: RequestBuilder<ActionTargetListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Update a single action target.
     
     - parameter actionTargetId: (path) ID of the action target. 
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patchJourneyActiontarget(actionTargetId: String, body: PatchActionTarget? = nil, completion: @escaping ((_ data: ActionTarget?,_ error: Error?) -> Void)) {
        let requestBuilder = patchJourneyActiontargetWithRequestBuilder(actionTargetId: actionTargetId, body: body)
        requestBuilder.execute { (response: Response<ActionTarget>?, error) -> Void in
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
     
     Update a single action target.
     
     - PATCH /api/v2/journey/actiontargets/{actionTargetId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "supportedMediaTypes" : [ "aeiou" ],
  "shortAbandonThreshold" : 123,
  "userData" : [ {
    "value" : "aeiou",
    "key" : "aeiou"
  } ],
  "createdDate" : "2000-01-23T04:56:07.000+0000",
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "modifiedDate" : "2000-01-23T04:56:07.000+0000",
  "description" : "aeiou",
  "id" : "aeiou",
  "state" : "aeiou",
  "serviceLevel" : {
    "percentage" : 1.3579000000000001069366817318950779736042022705078125,
    "durationMs" : 123456789
  }
}}]
     
     - parameter actionTargetId: (path) ID of the action target. 
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ActionTarget> 
     */
    open class func patchJourneyActiontargetWithRequestBuilder(actionTargetId: String, body: PatchActionTarget? = nil) -> RequestBuilder<ActionTarget> {
        var path = "/api/v2/journey/actiontargets/{actionTargetId}"
        let actionTargetIdPreEscape = "\(actionTargetId)"
        let actionTargetIdPostEscape = actionTargetIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{actionTargetId}", with: actionTargetIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ActionTarget>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", url: url!, body: body)
    }

    
    
    
    /**
     
     Query for journey aggregates
     
     - parameter body: (body) query 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAnalyticsJourneysAggregatesQuery(body: JourneyAggregationQuery, completion: @escaping ((_ data: JourneyAggregateQueryResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = postAnalyticsJourneysAggregatesQueryWithRequestBuilder(body: body)
        requestBuilder.execute { (response: Response<JourneyAggregateQueryResponse>?, error) -> Void in
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
     
     Query for journey aggregates
     
     - POST /api/v2/analytics/journeys/aggregates/query
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "results" : [ {
    "data" : [ {
      "interval" : "aeiou",
      "metrics" : [ {
        "metric" : "aeiou",
        "stats" : {
          "current" : 1.3579000000000001069366817318950779736042022705078125,
          "min" : 1.3579000000000001069366817318950779736042022705078125,
          "max" : 1.3579000000000001069366817318950779736042022705078125,
          "count" : 123456789,
          "sum" : 1.3579000000000001069366817318950779736042022705078125,
          "countPositive" : 123456789,
          "countNegative" : 123456789,
          "ratio" : 1.3579000000000001069366817318950779736042022705078125,
          "numerator" : 1.3579000000000001069366817318950779736042022705078125,
          "denominator" : 1.3579000000000001069366817318950779736042022705078125,
          "target" : 1.3579000000000001069366817318950779736042022705078125
        },
        "qualifier" : "aeiou"
      } ],
      "views" : [ {
        "stats" : "",
        "name" : "aeiou"
      } ]
    } ],
    "group" : {
      "key" : "aeiou"
    }
  } ]
}}]
     
     - parameter body: (body) query 

     - returns: RequestBuilder<JourneyAggregateQueryResponse> 
     */
    open class func postAnalyticsJourneysAggregatesQueryWithRequestBuilder(body: JourneyAggregationQuery) -> RequestBuilder<JourneyAggregateQueryResponse> {
        let path = "/api/v2/analytics/journeys/aggregates/query"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<JourneyAggregateQueryResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

}
