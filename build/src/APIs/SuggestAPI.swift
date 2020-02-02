//
// SuggestAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class SuggestAPI {
    
    
    
    
    public enum Expand_getSearch: String { 
        case routingstatus = "routingStatus"
        case presence = "presence"
        case conversationsummary = "conversationSummary"
        case outofoffice = "outOfOffice"
        case geolocation = "geolocation"
        case station = "station"
        case authorization = "authorization"
        case lasttokenissued = "lasttokenissued"
        case authorizationUnusedroles = "authorization.unusedRoles"
        case profileskills = "profileSkills"
        case certifications = "certifications"
        case locations = "locations"
        case groups = "groups"
        case skills = "skills"
        case languages = "languages"
        case languagepreference = "languagePreference"
        case employerinfo = "employerInfo"
        case biography = "biography"
        case calleruserRoutingstatus = "callerUser.routingStatus"
        case calleruserPrimarypresence = "callerUser.primaryPresence"
        case calleruserConversationsummary = "callerUser.conversationSummary"
        case calleruserOutofoffice = "callerUser.outOfOffice"
        case calleruserGeolocation = "callerUser.geolocation"
        case images = "images"
        case addressverificationdetails = "addressVerificationDetails"
    }

    
    
    
    
    /**
     
     Search using the q64 value returned from a previous search.
     
     - parameter q64: (query) q64 
     - parameter expand: (query) Which fields, if any, to expand (optional)
     - parameter profile: (query) profile (optional, default to true)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSearch(q64: String, expand: [String]? = nil, profile: Bool? = nil, completion: @escaping ((_ data: JsonNodeSearchResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = getSearchWithRequestBuilder(q64: q64, expand: expand, profile: profile)
        requestBuilder.execute { (response: Response<JsonNodeSearchResponse>?, error) -> Void in
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
     
     Search using the q64 value returned from a previous search.
     
     - GET /api/v2/search
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "types" : [ "aeiou" ],
  "pageNumber" : 123,
  "previousPage" : "aeiou",
  "nextPage" : "aeiou",
  "pageSize" : 123,
  "currentPage" : "aeiou",
  "results" : {
    "integralNumber" : true,
    "double" : true,
    "valueNode" : true,
    "floatingPointNumber" : true,
    "bigInteger" : true,
    "nodeType" : "aeiou",
    "float" : true,
    "int" : true,
    "long" : true,
    "textual" : true,
    "missingNode" : true,
    "pojo" : true,
    "number" : true,
    "boolean" : true,
    "null" : true,
    "array" : true,
    "binary" : true,
    "containerNode" : true,
    "short" : true,
    "bigDecimal" : true,
    "object" : true
  },
  "aggregations" : ""
}}]
     
     - parameter q64: (query) q64 
     - parameter expand: (query) Which fields, if any, to expand (optional)
     - parameter profile: (query) profile (optional, default to true)

     - returns: RequestBuilder<JsonNodeSearchResponse> 
     */
    open class func getSearchWithRequestBuilder(q64: String, expand: [String]? = nil, profile: Bool? = nil) -> RequestBuilder<JsonNodeSearchResponse> {
        let path = "/api/v2/search"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "q64": q64, 
            
            "expand": expand, 
            
            "profile": profile
            
        ])

        let requestBuilder: RequestBuilder<JsonNodeSearchResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    public enum Expand_getSearchSuggest: String { 
        case routingstatus = "routingStatus"
        case presence = "presence"
        case conversationsummary = "conversationSummary"
        case outofoffice = "outOfOffice"
        case geolocation = "geolocation"
        case station = "station"
        case authorization = "authorization"
        case lasttokenissued = "lasttokenissued"
        case authorizationUnusedroles = "authorization.unusedRoles"
        case profileskills = "profileSkills"
        case certifications = "certifications"
        case locations = "locations"
        case groups = "groups"
        case skills = "skills"
        case languages = "languages"
        case languagepreference = "languagePreference"
        case employerinfo = "employerInfo"
        case biography = "biography"
        case calleruserRoutingstatus = "callerUser.routingStatus"
        case calleruserPrimarypresence = "callerUser.primaryPresence"
        case calleruserConversationsummary = "callerUser.conversationSummary"
        case calleruserOutofoffice = "callerUser.outOfOffice"
        case calleruserGeolocation = "callerUser.geolocation"
        case images = "images"
        case addressverificationdetails = "addressVerificationDetails"
    }

    
    
    
    
    /**
     
     Suggest resources using the q64 value returned from a previous suggest query.
     
     - parameter q64: (query) q64 
     - parameter expand: (query) Which fields, if any, to expand (optional)
     - parameter profile: (query) profile (optional, default to true)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSearchSuggest(q64: String, expand: [String]? = nil, profile: Bool? = nil, completion: @escaping ((_ data: JsonNodeSearchResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = getSearchSuggestWithRequestBuilder(q64: q64, expand: expand, profile: profile)
        requestBuilder.execute { (response: Response<JsonNodeSearchResponse>?, error) -> Void in
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
     
     Suggest resources using the q64 value returned from a previous suggest query.
     
     - GET /api/v2/search/suggest
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "types" : [ "aeiou" ],
  "pageNumber" : 123,
  "previousPage" : "aeiou",
  "nextPage" : "aeiou",
  "pageSize" : 123,
  "currentPage" : "aeiou",
  "results" : {
    "integralNumber" : true,
    "double" : true,
    "valueNode" : true,
    "floatingPointNumber" : true,
    "bigInteger" : true,
    "nodeType" : "aeiou",
    "float" : true,
    "int" : true,
    "long" : true,
    "textual" : true,
    "missingNode" : true,
    "pojo" : true,
    "number" : true,
    "boolean" : true,
    "null" : true,
    "array" : true,
    "binary" : true,
    "containerNode" : true,
    "short" : true,
    "bigDecimal" : true,
    "object" : true
  },
  "aggregations" : ""
}}]
     
     - parameter q64: (query) q64 
     - parameter expand: (query) Which fields, if any, to expand (optional)
     - parameter profile: (query) profile (optional, default to true)

     - returns: RequestBuilder<JsonNodeSearchResponse> 
     */
    open class func getSearchSuggestWithRequestBuilder(q64: String, expand: [String]? = nil, profile: Bool? = nil) -> RequestBuilder<JsonNodeSearchResponse> {
        let path = "/api/v2/search/suggest"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "q64": q64, 
            
            "expand": expand, 
            
            "profile": profile
            
        ])

        let requestBuilder: RequestBuilder<JsonNodeSearchResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Search resources.
     
     - parameter body: (body) Search request options 
     - parameter profile: (query) profile (optional, default to true)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSearch(body: SearchRequest, profile: Bool? = nil, completion: @escaping ((_ data: JsonNodeSearchResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = postSearchWithRequestBuilder(body: body, profile: profile)
        requestBuilder.execute { (response: Response<JsonNodeSearchResponse>?, error) -> Void in
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
     
     Search resources.
     
     - POST /api/v2/search
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "types" : [ "aeiou" ],
  "pageNumber" : 123,
  "previousPage" : "aeiou",
  "nextPage" : "aeiou",
  "pageSize" : 123,
  "currentPage" : "aeiou",
  "results" : {
    "integralNumber" : true,
    "double" : true,
    "valueNode" : true,
    "floatingPointNumber" : true,
    "bigInteger" : true,
    "nodeType" : "aeiou",
    "float" : true,
    "int" : true,
    "long" : true,
    "textual" : true,
    "missingNode" : true,
    "pojo" : true,
    "number" : true,
    "boolean" : true,
    "null" : true,
    "array" : true,
    "binary" : true,
    "containerNode" : true,
    "short" : true,
    "bigDecimal" : true,
    "object" : true
  },
  "aggregations" : ""
}}]
     
     - parameter body: (body) Search request options 
     - parameter profile: (query) profile (optional, default to true)

     - returns: RequestBuilder<JsonNodeSearchResponse> 
     */
    open class func postSearchWithRequestBuilder(body: SearchRequest, profile: Bool? = nil) -> RequestBuilder<JsonNodeSearchResponse> {
        let path = "/api/v2/search"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "profile": profile
            
        ])

        let requestBuilder: RequestBuilder<JsonNodeSearchResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Suggest resources.
     
     - parameter body: (body) Search request options 
     - parameter profile: (query) profile (optional, default to true)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postSearchSuggest(body: SuggestSearchRequest, profile: Bool? = nil, completion: @escaping ((_ data: JsonNodeSearchResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = postSearchSuggestWithRequestBuilder(body: body, profile: profile)
        requestBuilder.execute { (response: Response<JsonNodeSearchResponse>?, error) -> Void in
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
     
     Suggest resources.
     
     - POST /api/v2/search/suggest
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "types" : [ "aeiou" ],
  "pageNumber" : 123,
  "previousPage" : "aeiou",
  "nextPage" : "aeiou",
  "pageSize" : 123,
  "currentPage" : "aeiou",
  "results" : {
    "integralNumber" : true,
    "double" : true,
    "valueNode" : true,
    "floatingPointNumber" : true,
    "bigInteger" : true,
    "nodeType" : "aeiou",
    "float" : true,
    "int" : true,
    "long" : true,
    "textual" : true,
    "missingNode" : true,
    "pojo" : true,
    "number" : true,
    "boolean" : true,
    "null" : true,
    "array" : true,
    "binary" : true,
    "containerNode" : true,
    "short" : true,
    "bigDecimal" : true,
    "object" : true
  },
  "aggregations" : ""
}}]
     
     - parameter body: (body) Search request options 
     - parameter profile: (query) profile (optional, default to true)

     - returns: RequestBuilder<JsonNodeSearchResponse> 
     */
    open class func postSearchSuggestWithRequestBuilder(body: SuggestSearchRequest, profile: Bool? = nil) -> RequestBuilder<JsonNodeSearchResponse> {
        let path = "/api/v2/search/suggest"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "profile": profile
            
        ])

        let requestBuilder: RequestBuilder<JsonNodeSearchResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

}
