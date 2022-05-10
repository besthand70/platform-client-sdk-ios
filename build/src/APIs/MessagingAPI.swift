//
// MessagingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class MessagingAPI {
    
    
    
    /**
     
     Delete a supported content profile
     
     - parameter supportedContentId: (path) Supported Content ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteMessagingSupportedcontentSupportedContentId(supportedContentId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        let requestBuilder = deleteMessagingSupportedcontentSupportedContentIdWithRequestBuilder(supportedContentId: supportedContentId)
        requestBuilder.execute { (response: Response<Void>?, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     
     Delete a supported content profile
     
     - DELETE /api/v2/messaging/supportedcontent/{supportedContentId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     
     - parameter supportedContentId: (path) Supported Content ID 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteMessagingSupportedcontentSupportedContentIdWithRequestBuilder(supportedContentId: String) -> RequestBuilder<Void> {
        var path = "/api/v2/messaging/supportedcontent/{supportedContentId}"
        let supportedContentIdPreEscape = "\(supportedContentId)"
        let supportedContentIdPostEscape = supportedContentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{supportedContentId}", with: supportedContentIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Get a list of Supported Content profiles
     
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter pageNumber: (query) Page number (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMessagingSupportedcontent(pageSize: Int? = nil, pageNumber: Int? = nil, completion: @escaping ((_ data: SupportedContentListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getMessagingSupportedcontentWithRequestBuilder(pageSize: pageSize, pageNumber: pageNumber)
        requestBuilder.execute { (response: Response<SupportedContentListing>?, error) -> Void in
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
     
     Get a list of Supported Content profiles
     
     - GET /api/v2/messaging/supportedcontent
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "pageNumber" : 123,
  "entities" : [ {
    "mediaTypes" : {
      "allow" : {
        "inbound" : [ {
          "type" : "aeiou"
        } ],
        "outbound" : [ "" ]
      }
    },
    "dateCreated" : "2000-01-23T04:56:07.000+0000",
    "createdBy" : {
      "selfUri" : "aeiou",
      "name" : "aeiou",
      "id" : "aeiou"
    },
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "dateModified" : "2000-01-23T04:56:07.000+0000",
    "modifiedBy" : "",
    "id" : "aeiou",
    "version" : 123
  } ],
  "firstUri" : "aeiou",
  "lastUri" : "aeiou",
  "selfUri" : "aeiou",
  "pageSize" : 123,
  "previousUri" : "aeiou",
  "nextUri" : "aeiou"
}}]
     
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter pageNumber: (query) Page number (optional, default to 1)

     - returns: RequestBuilder<SupportedContentListing> 
     */
    open class func getMessagingSupportedcontentWithRequestBuilder(pageSize: Int? = nil, pageNumber: Int? = nil) -> RequestBuilder<SupportedContentListing> {
        let path = "/api/v2/messaging/supportedcontent"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "pageSize": pageSize?.encodeToJSON(), 
            
            "pageNumber": pageNumber?.encodeToJSON()
            
        ])

        let requestBuilder: RequestBuilder<SupportedContentListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    /**
     
     Get a supported content profile
     
     - parameter supportedContentId: (path) Supported Content ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMessagingSupportedcontentSupportedContentId(supportedContentId: String, completion: @escaping ((_ data: SupportedContent?,_ error: Error?) -> Void)) {
        let requestBuilder = getMessagingSupportedcontentSupportedContentIdWithRequestBuilder(supportedContentId: supportedContentId)
        requestBuilder.execute { (response: Response<SupportedContent>?, error) -> Void in
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
     
     Get a supported content profile
     
     - GET /api/v2/messaging/supportedcontent/{supportedContentId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "mediaTypes" : {
    "allow" : {
      "inbound" : [ {
        "type" : "aeiou"
      } ],
      "outbound" : [ "" ]
    }
  },
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "createdBy" : {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "dateModified" : "2000-01-23T04:56:07.000+0000",
  "modifiedBy" : "",
  "id" : "aeiou",
  "version" : 123
}}]
     
     - parameter supportedContentId: (path) Supported Content ID 

     - returns: RequestBuilder<SupportedContent> 
     */
    open class func getMessagingSupportedcontentSupportedContentIdWithRequestBuilder(supportedContentId: String) -> RequestBuilder<SupportedContent> {
        var path = "/api/v2/messaging/supportedcontent/{supportedContentId}"
        let supportedContentIdPreEscape = "\(supportedContentId)"
        let supportedContentIdPostEscape = supportedContentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{supportedContentId}", with: supportedContentIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SupportedContent>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Update a supported content profile
     
     - parameter supportedContentId: (path) Supported Content ID 
     - parameter body: (body) SupportedContent 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patchMessagingSupportedcontentSupportedContentId(supportedContentId: String, body: SupportedContent, completion: @escaping ((_ data: SupportedContent?,_ error: Error?) -> Void)) {
        let requestBuilder = patchMessagingSupportedcontentSupportedContentIdWithRequestBuilder(supportedContentId: supportedContentId, body: body)
        requestBuilder.execute { (response: Response<SupportedContent>?, error) -> Void in
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
     
     Update a supported content profile
     
     - PATCH /api/v2/messaging/supportedcontent/{supportedContentId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "mediaTypes" : {
    "allow" : {
      "inbound" : [ {
        "type" : "aeiou"
      } ],
      "outbound" : [ "" ]
    }
  },
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "createdBy" : {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "dateModified" : "2000-01-23T04:56:07.000+0000",
  "modifiedBy" : "",
  "id" : "aeiou",
  "version" : 123
}}]
     
     - parameter supportedContentId: (path) Supported Content ID 
     - parameter body: (body) SupportedContent 

     - returns: RequestBuilder<SupportedContent> 
     */
    open class func patchMessagingSupportedcontentSupportedContentIdWithRequestBuilder(supportedContentId: String, body: SupportedContent) -> RequestBuilder<SupportedContent> {
        var path = "/api/v2/messaging/supportedcontent/{supportedContentId}"
        let supportedContentIdPreEscape = "\(supportedContentId)"
        let supportedContentIdPostEscape = supportedContentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{supportedContentId}", with: supportedContentIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SupportedContent>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", url: url!, body: body)
    }

    
    
    
    /**
     
     Create a Supported Content profile
     
     - parameter body: (body) SupportedContent 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postMessagingSupportedcontent(body: SupportedContent, completion: @escaping ((_ data: SupportedContent?,_ error: Error?) -> Void)) {
        let requestBuilder = postMessagingSupportedcontentWithRequestBuilder(body: body)
        requestBuilder.execute { (response: Response<SupportedContent>?, error) -> Void in
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
     
     Create a Supported Content profile
     
     - POST /api/v2/messaging/supportedcontent
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "mediaTypes" : {
    "allow" : {
      "inbound" : [ {
        "type" : "aeiou"
      } ],
      "outbound" : [ "" ]
    }
  },
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "createdBy" : {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "dateModified" : "2000-01-23T04:56:07.000+0000",
  "modifiedBy" : "",
  "id" : "aeiou",
  "version" : 123
}}]
     
     - parameter body: (body) SupportedContent 

     - returns: RequestBuilder<SupportedContent> 
     */
    open class func postMessagingSupportedcontentWithRequestBuilder(body: SupportedContent) -> RequestBuilder<SupportedContent> {
        let path = "/api/v2/messaging/supportedcontent"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SupportedContent>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

}
