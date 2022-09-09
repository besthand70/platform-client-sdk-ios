//
// GeneralDataProtectionRegulationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class GeneralDataProtectionRegulationAPI {
    
    /**
     Get an existing GDPR request
     
     - parameter requestId: (path) Request id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGdprRequest(requestId: String, completion: @escaping ((_ data: GDPRRequest?,_ error: Error?) -> Void)) {
        let requestBuilder = getGdprRequestWithRequestBuilder(requestId: requestId)
        requestBuilder.execute { (response: Response<GDPRRequest>?, error) -> Void in
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
     Get an existing GDPR request
     - GET /api/v2/gdpr/requests/{requestId}
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "resultsUrl" : "resultsUrl",
  "createdDate" : "2000-01-23T04:56:07.000+00:00",
  "requestType" : "GDPR_EXPORT",
  "createdBy" : "{}",
  "subject" : "{ \"emailAddresses\": [\"personal.email@domain.com\"], \"phoneNumbers\": [\"+13115552368\"] }",
  "selfUri" : "https://openapi-generator.tech",
  "name" : "name",
  "id" : "id",
  "replacementTerms" : "[ { \"type\": \"EMAIL\": \"existingValue\": \"personal.email@domain.com\", \"updatedValue\": \"updated.personal.email@domain.com\" } ]",
  "status" : "INITIATED"
}, statusCode=200}]
     
     - parameter requestId: (path) Request id 

     - returns: RequestBuilder<GDPRRequest> 
     */
    open class func getGdprRequestWithRequestBuilder(requestId: String) -> RequestBuilder<GDPRRequest> {        
        var path = "/api/v2/gdpr/requests/{requestId}"
        let requestIdPreEscape = "\(requestId)"
        let requestIdPostEscape = requestIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{requestId}", with: requestIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body: Data? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GDPRRequest>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    /**
     Get all GDPR requests
     
     - parameter pageSize: (query) Page size (optional)
     - parameter pageNumber: (query) Page number (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGdprRequests(pageSize: Int? = nil, pageNumber: Int? = nil, completion: @escaping ((_ data: GDPRRequestEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getGdprRequestsWithRequestBuilder(pageSize: pageSize, pageNumber: pageNumber)
        requestBuilder.execute { (response: Response<GDPRRequestEntityListing>?, error) -> Void in
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
     Get all GDPR requests
     - GET /api/v2/gdpr/requests
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 1,
  "pageCount" : 5,
  "pageNumber" : 6,
  "entities" : [ {
    "resultsUrl" : "resultsUrl",
    "createdDate" : "2000-01-23T04:56:07.000+00:00",
    "requestType" : "GDPR_EXPORT",
    "createdBy" : "{}",
    "subject" : "{ \"emailAddresses\": [\"personal.email@domain.com\"], \"phoneNumbers\": [\"+13115552368\"] }",
    "selfUri" : "https://openapi-generator.tech",
    "name" : "name",
    "id" : "id",
    "replacementTerms" : "[ { \"type\": \"EMAIL\": \"existingValue\": \"personal.email@domain.com\", \"updatedValue\": \"updated.personal.email@domain.com\" } ]",
    "status" : "INITIATED"
  }, {
    "resultsUrl" : "resultsUrl",
    "createdDate" : "2000-01-23T04:56:07.000+00:00",
    "requestType" : "GDPR_EXPORT",
    "createdBy" : "{}",
    "subject" : "{ \"emailAddresses\": [\"personal.email@domain.com\"], \"phoneNumbers\": [\"+13115552368\"] }",
    "selfUri" : "https://openapi-generator.tech",
    "name" : "name",
    "id" : "id",
    "replacementTerms" : "[ { \"type\": \"EMAIL\": \"existingValue\": \"personal.email@domain.com\", \"updatedValue\": \"updated.personal.email@domain.com\" } ]",
    "status" : "INITIATED"
  } ],
  "firstUri" : "https://openapi-generator.tech",
  "selfUri" : "https://openapi-generator.tech",
  "lastUri" : "https://openapi-generator.tech",
  "pageSize" : 0,
  "nextUri" : "https://openapi-generator.tech",
  "previousUri" : "https://openapi-generator.tech"
}, statusCode=200}]
     
     - parameter pageSize: (query) Page size (optional)
     - parameter pageNumber: (query) Page number (optional)

     - returns: RequestBuilder<GDPRRequestEntityListing> 
     */
    open class func getGdprRequestsWithRequestBuilder(pageSize: Int? = nil, pageNumber: Int? = nil) -> RequestBuilder<GDPRRequestEntityListing> {        
        let path = "/api/v2/gdpr/requests"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body: Data? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "pageSize": pageSize?.encodeToJSON(), 
            "pageNumber": pageNumber?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<GDPRRequestEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    public enum SearchType_getGdprSubjects: String { 
        case name = "NAME"
        case address = "ADDRESS"
        case phone = "PHONE"
        case email = "EMAIL"
        case twitter = "TWITTER"
    }

    
    
    /**
     Get GDPR subjects
     
     - parameter searchType: (query) Search Type 
     - parameter searchValue: (query) Search Value 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGdprSubjects(searchType: SearchType_getGdprSubjects, searchValue: String, completion: @escaping ((_ data: GDPRSubjectEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getGdprSubjectsWithRequestBuilder(searchType: searchType, searchValue: searchValue)
        requestBuilder.execute { (response: Response<GDPRSubjectEntityListing>?, error) -> Void in
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
     Get GDPR subjects
     - GET /api/v2/gdpr/subjects
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 1,
  "pageCount" : 5,
  "pageNumber" : 6,
  "entities" : [ {
    "addresses" : [ "addresses", "addresses" ],
    "externalContactId" : "externalContactId",
    "emailAddresses" : [ "emailAddresses", "emailAddresses" ],
    "name" : "name",
    "externalId" : "externalId",
    "dialerContactId" : {
      "contactListId" : "contactListId",
      "id" : "id"
    },
    "journeyCustomer" : {
      "id" : "id",
      "type" : "type"
    },
    "socialHandle" : {
      "type" : "TWITTER",
      "value" : "value"
    },
    "userId" : "userId",
    "phoneNumbers" : [ "phoneNumbers", "phoneNumbers" ]
  }, {
    "addresses" : [ "addresses", "addresses" ],
    "externalContactId" : "externalContactId",
    "emailAddresses" : [ "emailAddresses", "emailAddresses" ],
    "name" : "name",
    "externalId" : "externalId",
    "dialerContactId" : {
      "contactListId" : "contactListId",
      "id" : "id"
    },
    "journeyCustomer" : {
      "id" : "id",
      "type" : "type"
    },
    "socialHandle" : {
      "type" : "TWITTER",
      "value" : "value"
    },
    "userId" : "userId",
    "phoneNumbers" : [ "phoneNumbers", "phoneNumbers" ]
  } ],
  "firstUri" : "https://openapi-generator.tech",
  "selfUri" : "https://openapi-generator.tech",
  "lastUri" : "https://openapi-generator.tech",
  "pageSize" : 0,
  "nextUri" : "https://openapi-generator.tech",
  "previousUri" : "https://openapi-generator.tech"
}, statusCode=200}]
     
     - parameter searchType: (query) Search Type 
     - parameter searchValue: (query) Search Value 

     - returns: RequestBuilder<GDPRSubjectEntityListing> 
     */
    open class func getGdprSubjectsWithRequestBuilder(searchType: SearchType_getGdprSubjects, searchValue: String) -> RequestBuilder<GDPRSubjectEntityListing> {        
        let path = "/api/v2/gdpr/subjects"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body: Data? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "searchType": searchType.rawValue, 
            "searchValue": searchValue
        ])

        let requestBuilder: RequestBuilder<GDPRSubjectEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    /**
     Submit a new GDPR request
     
     - parameter body: (body) GDPR request 
     - parameter deleteConfirmed: (query) Confirm delete (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postGdprRequests(body: GDPRRequest, deleteConfirmed: Bool? = nil, completion: @escaping ((_ data: GDPRRequest?,_ error: Error?) -> Void)) {
        let requestBuilder = postGdprRequestsWithRequestBuilder(body: body, deleteConfirmed: deleteConfirmed)
        requestBuilder.execute { (response: Response<GDPRRequest>?, error) -> Void in
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
     Submit a new GDPR request
     - POST /api/v2/gdpr/requests
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "resultsUrl" : "resultsUrl",
  "createdDate" : "2000-01-23T04:56:07.000+00:00",
  "requestType" : "GDPR_EXPORT",
  "createdBy" : "{}",
  "subject" : "{ \"emailAddresses\": [\"personal.email@domain.com\"], \"phoneNumbers\": [\"+13115552368\"] }",
  "selfUri" : "https://openapi-generator.tech",
  "name" : "name",
  "id" : "id",
  "replacementTerms" : "[ { \"type\": \"EMAIL\": \"existingValue\": \"personal.email@domain.com\", \"updatedValue\": \"updated.personal.email@domain.com\" } ]",
  "status" : "INITIATED"
}, statusCode=200}]
     
     - parameter body: (body) GDPR request 
     - parameter deleteConfirmed: (query) Confirm delete (optional)

     - returns: RequestBuilder<GDPRRequest> 
     */
    open class func postGdprRequestsWithRequestBuilder(body: GDPRRequest, deleteConfirmed: Bool? = nil) -> RequestBuilder<GDPRRequest> {        
        let path = "/api/v2/gdpr/requests"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "deleteConfirmed": deleteConfirmed
        ])

        let requestBuilder: RequestBuilder<GDPRRequest>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

}
