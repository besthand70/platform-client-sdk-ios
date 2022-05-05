//
// ObjectsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ObjectsAPI {
    
    
    
    
    
    /**
     
     Delete a division.
     
     - parameter divisionId: (path) Division ID 
     - parameter force: (query) Force delete this division as well as the grants and objects associated with it (optional, default to false)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAuthorizationDivision(divisionId: String, force: Bool? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        let requestBuilder = deleteAuthorizationDivisionWithRequestBuilder(divisionId: divisionId, force: force)
        requestBuilder.execute { (response: Response<Void>?, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     
     Delete a division.
     
     - DELETE /api/v2/authorization/divisions/{divisionId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     
     - parameter divisionId: (path) Division ID 
     - parameter force: (query) Force delete this division as well as the grants and objects associated with it (optional, default to false)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteAuthorizationDivisionWithRequestBuilder(divisionId: String, force: Bool? = nil) -> RequestBuilder<Void> {
        var path = "/api/v2/authorization/divisions/{divisionId}"
        let divisionIdPreEscape = "\(divisionId)"
        let divisionIdPostEscape = divisionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{divisionId}", with: divisionIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "force": force
            
        ])

        let requestBuilder: RequestBuilder<Void>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Returns an authorization division.
     
     - parameter divisionId: (path) Division ID 
     - parameter objectCount: (query) Get count of objects in this division, grouped by type (optional, default to false)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuthorizationDivision(divisionId: String, objectCount: Bool? = nil, completion: @escaping ((_ data: AuthzDivision?,_ error: Error?) -> Void)) {
        let requestBuilder = getAuthorizationDivisionWithRequestBuilder(divisionId: divisionId, objectCount: objectCount)
        requestBuilder.execute { (response: Response<AuthzDivision>?, error) -> Void in
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
     
     Returns an authorization division.
     
     - GET /api/v2/authorization/divisions/{divisionId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "objectCounts" : {
    "key" : 123456789
  },
  "id" : "aeiou",
  "homeDivision" : true
}}]
     
     - parameter divisionId: (path) Division ID 
     - parameter objectCount: (query) Get count of objects in this division, grouped by type (optional, default to false)

     - returns: RequestBuilder<AuthzDivision> 
     */
    open class func getAuthorizationDivisionWithRequestBuilder(divisionId: String, objectCount: Bool? = nil) -> RequestBuilder<AuthzDivision> {
        var path = "/api/v2/authorization/divisions/{divisionId}"
        let divisionIdPreEscape = "\(divisionId)"
        let divisionIdPostEscape = divisionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{divisionId}", with: divisionIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "objectCount": objectCount
            
        ])

        let requestBuilder: RequestBuilder<AuthzDivision>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /**
     
     Retrieve a list of all divisions defined for the organization
     
     - parameter pageSize: (query) The total page size requested (optional, default to 25)
     - parameter pageNumber: (query) The page number requested (optional, default to 1)
     - parameter sortBy: (query) variable name requested to sort by (optional)
     - parameter expand: (query) variable name requested by expand list (optional)
     - parameter nextPage: (query) next page token (optional)
     - parameter previousPage: (query) Previous page token (optional)
     - parameter objectCount: (query) Include the count of objects contained in the division (optional, default to false)
     - parameter _id: (query) Optionally request specific divisions by their IDs (optional)
     - parameter name: (query) Search term to filter by division name (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuthorizationDivisions(pageSize: Int? = nil, pageNumber: Int? = nil, sortBy: String? = nil, expand: [String]? = nil, nextPage: String? = nil, previousPage: String? = nil, objectCount: Bool? = nil, _id: [String]? = nil, name: String? = nil, completion: @escaping ((_ data: AuthzDivisionEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getAuthorizationDivisionsWithRequestBuilder(pageSize: pageSize, pageNumber: pageNumber, sortBy: sortBy, expand: expand, nextPage: nextPage, previousPage: previousPage, objectCount: objectCount, _id: _id, name: name)
        requestBuilder.execute { (response: Response<AuthzDivisionEntityListing>?, error) -> Void in
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
     
     Retrieve a list of all divisions defined for the organization
     
     - GET /api/v2/authorization/divisions
     - Request specific divisions by id using a query param \"id\", e.g.  ?id=5f777167-63be-4c24-ad41-374155d9e28b&id=72e9fb25-c484-488d-9312-7acba82435b3
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "pageNumber" : 123,
  "entities" : [ {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "objectCounts" : {
      "key" : 123456789
    },
    "id" : "aeiou",
    "homeDivision" : true
  } ],
  "firstUri" : "aeiou",
  "selfUri" : "aeiou",
  "lastUri" : "aeiou",
  "pageSize" : 123,
  "nextUri" : "aeiou",
  "previousUri" : "aeiou"
}}]
     
     - parameter pageSize: (query) The total page size requested (optional, default to 25)
     - parameter pageNumber: (query) The page number requested (optional, default to 1)
     - parameter sortBy: (query) variable name requested to sort by (optional)
     - parameter expand: (query) variable name requested by expand list (optional)
     - parameter nextPage: (query) next page token (optional)
     - parameter previousPage: (query) Previous page token (optional)
     - parameter objectCount: (query) Include the count of objects contained in the division (optional, default to false)
     - parameter _id: (query) Optionally request specific divisions by their IDs (optional)
     - parameter name: (query) Search term to filter by division name (optional)

     - returns: RequestBuilder<AuthzDivisionEntityListing> 
     */
    open class func getAuthorizationDivisionsWithRequestBuilder(pageSize: Int? = nil, pageNumber: Int? = nil, sortBy: String? = nil, expand: [String]? = nil, nextPage: String? = nil, previousPage: String? = nil, objectCount: Bool? = nil, _id: [String]? = nil, name: String? = nil) -> RequestBuilder<AuthzDivisionEntityListing> {
        let path = "/api/v2/authorization/divisions"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "pageSize": pageSize?.encodeToJSON(), 
            
            "pageNumber": pageNumber?.encodeToJSON(), 
            
            "sortBy": sortBy, 
            
            "expand": expand, 
            
            "nextPage": nextPage, 
            
            "previousPage": previousPage, 
            
            "objectCount": objectCount, 
            
            "id": _id, 
            
            "name": name
            
        ])

        let requestBuilder: RequestBuilder<AuthzDivisionEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     Retrieve the home division for the organization.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuthorizationDivisionsHome(completion: @escaping ((_ data: AuthzDivision?,_ error: Error?) -> Void)) {
        let requestBuilder = getAuthorizationDivisionsHomeWithRequestBuilder()
        requestBuilder.execute { (response: Response<AuthzDivision>?, error) -> Void in
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
     
     Retrieve the home division for the organization.
     
     - GET /api/v2/authorization/divisions/home
     - Will not include object counts.
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "objectCounts" : {
    "key" : 123456789
  },
  "id" : "aeiou",
  "homeDivision" : true
}}]

     - returns: RequestBuilder<AuthzDivision> 
     */
    open class func getAuthorizationDivisionsHomeWithRequestBuilder() -> RequestBuilder<AuthzDivision> {
        let path = "/api/v2/authorization/divisions/home"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AuthzDivision>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     Returns the maximum allowed number of divisions.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuthorizationDivisionsLimit(completion: @escaping ((_ data: Int?,_ error: Error?) -> Void)) {
        let requestBuilder = getAuthorizationDivisionsLimitWithRequestBuilder()
        requestBuilder.execute { (response: Response<Int>?, error) -> Void in
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
     
     Returns the maximum allowed number of divisions.
     
     - GET /api/v2/authorization/divisions/limit
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example=123}]

     - returns: RequestBuilder<Int> 
     */
    open class func getAuthorizationDivisionsLimitWithRequestBuilder() -> RequestBuilder<Int> {
        let path = "/api/v2/authorization/divisions/limit"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Int>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    public enum ObjectType_postAuthorizationDivisionObject: String { 
        case queue = "QUEUE"
        case campaign = "CAMPAIGN"
        case contactlist = "CONTACTLIST"
        case dnclist = "DNCLIST"
        case emailcampaign = "EMAILCAMPAIGN"
        case messagingcampaign = "MESSAGINGCAMPAIGN"
        case managementunit = "MANAGEMENTUNIT"
        case businessunit = "BUSINESSUNIT"
        case flow = "FLOW"
        case flowmilestone = "FLOWMILESTONE"
        case flowoutcome = "FLOWOUTCOME"
        case user = "USER"
        case callroute = "CALLROUTE"
        case emergencygroups = "EMERGENCYGROUPS"
        case routingschedules = "ROUTINGSCHEDULES"
        case routingschedulegroups = "ROUTINGSCHEDULEGROUPS"
        case datatables = "DATATABLES"
        case team = "TEAM"
        case workbin = "WORKBIN"
        case worktype = "WORKTYPE"
        case extensionpool = "EXTENSIONPOOL"
        case skillgroup = "SKILLGROUP"
        case script = "SCRIPT"
    }

    
    
    
    
    /**
     
     Assign a list of objects to a division
     
     - parameter divisionId: (path) Division ID 
     - parameter objectType: (path) The type of the objects. Must be one of the valid object types 
     - parameter body: (body) Object Id List 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthorizationDivisionObject(divisionId: String, objectType: ObjectType_postAuthorizationDivisionObject, body: [String], completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        let requestBuilder = postAuthorizationDivisionObjectWithRequestBuilder(divisionId: divisionId, objectType: objectType, body: body)
        requestBuilder.execute { (response: Response<Void>?, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     
     Assign a list of objects to a division
     
     - POST /api/v2/authorization/divisions/{divisionId}/objects/{objectType}
     - Set the division of a specified list of objects. The objects must all be of the same type, one of:  CAMPAIGN, MANAGEMENTUNIT, FLOW, QUEUE, DATATABLES or USER.  The body of the request is a list of object IDs, which are expected to be  GUIDs, e.g. [\"206ce31f-61ec-40ed-a8b1-be6f06303998\",\"250a754e-f5e4-4f51-800f-a92f09d3bf8c\"]
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     
     - parameter divisionId: (path) Division ID 
     - parameter objectType: (path) The type of the objects. Must be one of the valid object types 
     - parameter body: (body) Object Id List 

     - returns: RequestBuilder<Void> 
     */
    open class func postAuthorizationDivisionObjectWithRequestBuilder(divisionId: String, objectType: ObjectType_postAuthorizationDivisionObject, body: [String]) -> RequestBuilder<Void> {
        var path = "/api/v2/authorization/divisions/{divisionId}/objects/{objectType}"
        let divisionIdPreEscape = "\(divisionId)"
        let divisionIdPostEscape = divisionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{divisionId}", with: divisionIdPostEscape, options: .literal, range: nil)
        let objectTypePreEscape = "\(objectType.rawValue)"
        let objectTypePostEscape = objectTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{objectType}", with: objectTypePostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Recreate a previously deleted division.
     
     - parameter divisionId: (path) Division ID 
     - parameter body: (body) Recreated division data 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthorizationDivisionRestore(divisionId: String, body: AuthzDivision, completion: @escaping ((_ data: AuthzDivision?,_ error: Error?) -> Void)) {
        let requestBuilder = postAuthorizationDivisionRestoreWithRequestBuilder(divisionId: divisionId, body: body)
        requestBuilder.execute { (response: Response<AuthzDivision>?, error) -> Void in
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
     
     Recreate a previously deleted division.
     
     - POST /api/v2/authorization/divisions/{divisionId}/restore
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "objectCounts" : {
    "key" : 123456789
  },
  "id" : "aeiou",
  "homeDivision" : true
}}]
     
     - parameter divisionId: (path) Division ID 
     - parameter body: (body) Recreated division data 

     - returns: RequestBuilder<AuthzDivision> 
     */
    open class func postAuthorizationDivisionRestoreWithRequestBuilder(divisionId: String, body: AuthzDivision) -> RequestBuilder<AuthzDivision> {
        var path = "/api/v2/authorization/divisions/{divisionId}/restore"
        let divisionIdPreEscape = "\(divisionId)"
        let divisionIdPostEscape = divisionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{divisionId}", with: divisionIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AuthzDivision>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    
    
    /**
     
     Create a division.
     
     - parameter body: (body) Division 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthorizationDivisions(body: AuthzDivision, completion: @escaping ((_ data: AuthzDivision?,_ error: Error?) -> Void)) {
        let requestBuilder = postAuthorizationDivisionsWithRequestBuilder(body: body)
        requestBuilder.execute { (response: Response<AuthzDivision>?, error) -> Void in
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
     
     Create a division.
     
     - POST /api/v2/authorization/divisions
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "objectCounts" : {
    "key" : 123456789
  },
  "id" : "aeiou",
  "homeDivision" : true
}}]
     
     - parameter body: (body) Division 

     - returns: RequestBuilder<AuthzDivision> 
     */
    open class func postAuthorizationDivisionsWithRequestBuilder(body: AuthzDivision) -> RequestBuilder<AuthzDivision> {
        let path = "/api/v2/authorization/divisions"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AuthzDivision>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Update a division.
     
     - parameter divisionId: (path) Division ID 
     - parameter body: (body) Updated division data 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putAuthorizationDivision(divisionId: String, body: AuthzDivision, completion: @escaping ((_ data: AuthzDivision?,_ error: Error?) -> Void)) {
        let requestBuilder = putAuthorizationDivisionWithRequestBuilder(divisionId: divisionId, body: body)
        requestBuilder.execute { (response: Response<AuthzDivision>?, error) -> Void in
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
     
     Update a division.
     
     - PUT /api/v2/authorization/divisions/{divisionId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "description" : "aeiou",
  "objectCounts" : {
    "key" : 123456789
  },
  "id" : "aeiou",
  "homeDivision" : true
}}]
     
     - parameter divisionId: (path) Division ID 
     - parameter body: (body) Updated division data 

     - returns: RequestBuilder<AuthzDivision> 
     */
    open class func putAuthorizationDivisionWithRequestBuilder(divisionId: String, body: AuthzDivision) -> RequestBuilder<AuthzDivision> {
        var path = "/api/v2/authorization/divisions/{divisionId}"
        let divisionIdPreEscape = "\(divisionId)"
        let divisionIdPostEscape = divisionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{divisionId}", with: divisionIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<AuthzDivision>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", url: url!, body: body)
    }

}
