//
// AuditAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class AuditAPI {
    
    /**
     
     Get service mapping information used in audits.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuditsQueryRealtimeServicemapping(completion: @escaping ((_ data: AuditQueryServiceMapping?,_ error: Error?) -> Void)) {
        let requestBuilder = getAuditsQueryRealtimeServicemappingWithRequestBuilder()
        requestBuilder.execute { (response: Response<AuditQueryServiceMapping>?, error) -> Void in
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
     
     Get service mapping information used in audits.
     
     - GET /api/v2/audits/query/realtime/servicemapping
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "services" : [ {
    "entities" : [ {
      "name" : "aeiou",
      "actions" : [ "aeiou" ]
    } ],
    "name" : "aeiou"
  } ]
}}]

     - returns: RequestBuilder<AuditQueryServiceMapping> 
     */
    open class func getAuditsQueryRealtimeServicemappingWithRequestBuilder() -> RequestBuilder<AuditQueryServiceMapping> {
        let path = "/api/v2/audits/query/realtime/servicemapping"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AuditQueryServiceMapping>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     Get service mapping information used in audits.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuditsQueryServicemapping(completion: @escaping ((_ data: AuditQueryServiceMapping?,_ error: Error?) -> Void)) {
        let requestBuilder = getAuditsQueryServicemappingWithRequestBuilder()
        requestBuilder.execute { (response: Response<AuditQueryServiceMapping>?, error) -> Void in
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
     
     Get service mapping information used in audits.
     
     - GET /api/v2/audits/query/servicemapping
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "services" : [ {
    "entities" : [ {
      "name" : "aeiou",
      "actions" : [ "aeiou" ]
    } ],
    "name" : "aeiou"
  } ]
}}]

     - returns: RequestBuilder<AuditQueryServiceMapping> 
     */
    open class func getAuditsQueryServicemappingWithRequestBuilder() -> RequestBuilder<AuditQueryServiceMapping> {
        let path = "/api/v2/audits/query/servicemapping"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AuditQueryServiceMapping>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    /**
     
     Get status of audit query execution
     
     - parameter transactionId: (path) Transaction ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuditsQueryTransactionId(transactionId: String, completion: @escaping ((_ data: AuditQueryExecutionStatusResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = getAuditsQueryTransactionIdWithRequestBuilder(transactionId: transactionId)
        requestBuilder.execute { (response: Response<AuditQueryExecutionStatusResponse>?, error) -> Void in
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
     
     Get status of audit query execution
     
     - GET /api/v2/audits/query/{transactionId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "interval" : "aeiou",
  "id" : "aeiou",
  "state" : "aeiou",
  "filters" : [ {
    "property" : "aeiou",
    "value" : "aeiou"
  } ],
  "sort" : [ {
    "sortOrder" : "aeiou",
    "name" : "aeiou"
  } ],
  "serviceName" : "aeiou",
  "startDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter transactionId: (path) Transaction ID 

     - returns: RequestBuilder<AuditQueryExecutionStatusResponse> 
     */
    open class func getAuditsQueryTransactionIdWithRequestBuilder(transactionId: String) -> RequestBuilder<AuditQueryExecutionStatusResponse> {
        var path = "/api/v2/audits/query/{transactionId}"
        let transactionIdPreEscape = "\(transactionId)"
        let transactionIdPostEscape = transactionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{transactionId}", with: transactionIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AuditQueryExecutionStatusResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    
    
    
    public enum Expand_getAuditsQueryTransactionIdResults: String { 
        case user = "user"
    }

    
    
    /**
     
     Get results of audit query
     
     - parameter transactionId: (path) Transaction ID 
     - parameter cursor: (query) Indicates where to resume query results (not required for first page) (optional)
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter expand: (query) Which fields, if any, to expand (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuditsQueryTransactionIdResults(transactionId: String, cursor: String? = nil, pageSize: Int? = nil, expand: [String]? = nil, completion: @escaping ((_ data: AuditQueryExecutionResultsResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = getAuditsQueryTransactionIdResultsWithRequestBuilder(transactionId: transactionId, cursor: cursor, pageSize: pageSize, expand: expand)
        requestBuilder.execute { (response: Response<AuditQueryExecutionResultsResponse>?, error) -> Void in
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
     
     Get results of audit query
     
     - GET /api/v2/audits/query/{transactionId}/results
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "cursor" : "aeiou",
  "entities" : [ {
    "remoteIp" : [ "aeiou" ],
    "propertyChanges" : [ {
      "property" : "aeiou",
      "newValues" : [ "aeiou" ],
      "oldValues" : [ "aeiou" ]
    } ],
    "entityType" : "aeiou",
    "serviceName" : "aeiou",
    "message" : {
      "messageWithParams" : "aeiou",
      "localizableMessageCode" : "aeiou",
      "messageParams" : {
        "key" : "aeiou"
      },
      "message" : "aeiou"
    },
    "context" : {
      "key" : "aeiou"
    },
    "client" : {
      "selfUri" : "aeiou",
      "id" : "aeiou"
    },
    "action" : "aeiou",
    "userHomeOrgId" : "aeiou",
    "id" : "aeiou",
    "user" : {
      "selfUri" : "aeiou",
      "name" : "aeiou",
      "id" : "aeiou"
    },
    "entity" : "",
    "eventDate" : "2000-01-23T04:56:07.000+0000"
  } ],
  "pageSize" : 123,
  "id" : "aeiou"
}}]
     
     - parameter transactionId: (path) Transaction ID 
     - parameter cursor: (query) Indicates where to resume query results (not required for first page) (optional)
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter expand: (query) Which fields, if any, to expand (optional)

     - returns: RequestBuilder<AuditQueryExecutionResultsResponse> 
     */
    open class func getAuditsQueryTransactionIdResultsWithRequestBuilder(transactionId: String, cursor: String? = nil, pageSize: Int? = nil, expand: [String]? = nil) -> RequestBuilder<AuditQueryExecutionResultsResponse> {
        var path = "/api/v2/audits/query/{transactionId}/results"
        let transactionIdPreEscape = "\(transactionId)"
        let transactionIdPostEscape = transactionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{transactionId}", with: transactionIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "cursor": cursor, 
            
            "pageSize": pageSize?.encodeToJSON(), 
            
            "expand": expand
            
        ])

        let requestBuilder: RequestBuilder<AuditQueryExecutionResultsResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    /**
     
     Create audit query execution
     
     - parameter body: (body) query 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuditsQuery(body: AuditQueryRequest, completion: @escaping ((_ data: AuditQueryExecutionStatusResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = postAuditsQueryWithRequestBuilder(body: body)
        requestBuilder.execute { (response: Response<AuditQueryExecutionStatusResponse>?, error) -> Void in
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
     
     Create audit query execution
     
     - POST /api/v2/audits/query
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "interval" : "aeiou",
  "id" : "aeiou",
  "state" : "aeiou",
  "filters" : [ {
    "property" : "aeiou",
    "value" : "aeiou"
  } ],
  "sort" : [ {
    "sortOrder" : "aeiou",
    "name" : "aeiou"
  } ],
  "serviceName" : "aeiou",
  "startDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter body: (body) query 

     - returns: RequestBuilder<AuditQueryExecutionStatusResponse> 
     */
    open class func postAuditsQueryWithRequestBuilder(body: AuditQueryRequest) -> RequestBuilder<AuditQueryExecutionStatusResponse> {
        let path = "/api/v2/audits/query"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AuditQueryExecutionStatusResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    
    
    
    public enum Expand_postAuditsQueryRealtime: String { 
        case user = "user"
    }

    
    
    /**
     
     This endpoint will only retrieve 7 days worth of audits for certain services. Please use /query to get a full list and older audits.
     
     - parameter body: (body) query 
     - parameter expand: (query) Which fields, if any, to expand (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuditsQueryRealtime(body: AuditRealtimeQueryRequest, expand: [String]? = nil, completion: @escaping ((_ data: AuditRealtimeQueryResultsResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = postAuditsQueryRealtimeWithRequestBuilder(body: body, expand: expand)
        requestBuilder.execute { (response: Response<AuditRealtimeQueryResultsResponse>?, error) -> Void in
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
     
     This endpoint will only retrieve 7 days worth of audits for certain services. Please use /query to get a full list and older audits.
     
     - POST /api/v2/audits/query/realtime
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "pageNumber" : 123,
  "entities" : [ {
    "remoteIp" : [ "aeiou" ],
    "propertyChanges" : [ {
      "property" : "aeiou",
      "newValues" : [ "aeiou" ],
      "oldValues" : [ "aeiou" ]
    } ],
    "entityType" : "aeiou",
    "serviceName" : "aeiou",
    "message" : {
      "messageWithParams" : "aeiou",
      "localizableMessageCode" : "aeiou",
      "messageParams" : {
        "key" : "aeiou"
      },
      "message" : "aeiou"
    },
    "context" : {
      "key" : "aeiou"
    },
    "client" : {
      "selfUri" : "aeiou",
      "id" : "aeiou"
    },
    "action" : "aeiou",
    "userHomeOrgId" : "aeiou",
    "id" : "aeiou",
    "user" : {
      "selfUri" : "aeiou",
      "name" : "aeiou",
      "id" : "aeiou"
    },
    "entity" : "",
    "eventDate" : "2000-01-23T04:56:07.000+0000"
  } ],
  "pageSize" : 123
}}]
     
     - parameter body: (body) query 
     - parameter expand: (query) Which fields, if any, to expand (optional)

     - returns: RequestBuilder<AuditRealtimeQueryResultsResponse> 
     */
    open class func postAuditsQueryRealtimeWithRequestBuilder(body: AuditRealtimeQueryRequest, expand: [String]? = nil) -> RequestBuilder<AuditRealtimeQueryResultsResponse> {
        let path = "/api/v2/audits/query/realtime"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "expand": expand
            
        ])

        let requestBuilder: RequestBuilder<AuditRealtimeQueryResultsResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

}
