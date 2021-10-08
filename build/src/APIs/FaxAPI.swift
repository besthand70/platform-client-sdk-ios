//
// FaxAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class FaxAPI {
    
    
    
    /**
     
     Delete a fax document.
     
     - parameter documentId: (path) Document ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFaxDocument(documentId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        let requestBuilder = deleteFaxDocumentWithRequestBuilder(documentId: documentId)
        requestBuilder.execute { (response: Response<Void>?, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     
     Delete a fax document.
     
     - DELETE /api/v2/fax/documents/{documentId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     
     - parameter documentId: (path) Document ID 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteFaxDocumentWithRequestBuilder(documentId: String) -> RequestBuilder<Void> {
        var path = "/api/v2/fax/documents/{documentId}"
        let documentIdPreEscape = "\(documentId)"
        let documentIdPostEscape = documentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{documentId}", with: documentIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", url: url!, body: body)
    }

    
    
    
    /**
     
     Get a document.
     
     - parameter documentId: (path) Document ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFaxDocument(documentId: String, completion: @escaping ((_ data: FaxDocument?,_ error: Error?) -> Void)) {
        let requestBuilder = getFaxDocumentWithRequestBuilder(documentId: documentId)
        requestBuilder.execute { (response: Response<FaxDocument>?, error) -> Void in
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
     
     Get a document.
     
     - GET /api/v2/fax/documents/{documentId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "callerAddress" : "aeiou",
  "workspace" : {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "pageCount" : 123456789,
  "read" : true,
  "downloadSharingUri" : "aeiou",
  "selfUri" : "aeiou",
  "dateModified" : "2000-01-23T04:56:07.000+0000",
  "receiverAddress" : "aeiou",
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "filename" : "aeiou",
  "createdBy" : "",
  "contentUri" : "aeiou",
  "name" : "aeiou",
  "contentLength" : 123456789,
  "id" : "aeiou",
  "thumbnails" : [ {
    "imageUri" : "aeiou",
    "width" : 123,
    "resolution" : "aeiou",
    "height" : 123
  } ],
  "contentType" : "aeiou",
  "sharingUri" : "aeiou"
}}]
     
     - parameter documentId: (path) Document ID 

     - returns: RequestBuilder<FaxDocument> 
     */
    open class func getFaxDocumentWithRequestBuilder(documentId: String) -> RequestBuilder<FaxDocument> {
        var path = "/api/v2/fax/documents/{documentId}"
        let documentIdPreEscape = "\(documentId)"
        let documentIdPostEscape = documentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{documentId}", with: documentIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<FaxDocument>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    /**
     
     Download a fax document.
     
     - parameter documentId: (path) Document ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFaxDocumentContent(documentId: String, completion: @escaping ((_ data: DownloadResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = getFaxDocumentContentWithRequestBuilder(documentId: documentId)
        requestBuilder.execute { (response: Response<DownloadResponse>?, error) -> Void in
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
     
     Download a fax document.
     
     - GET /api/v2/fax/documents/{documentId}/content
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "contentLocationUri" : "aeiou",
  "imageUri" : "aeiou",
  "thumbnails" : [ {
    "imageUri" : "aeiou",
    "width" : 123,
    "resolution" : "aeiou",
    "height" : 123
  } ]
}}]
     
     - parameter documentId: (path) Document ID 

     - returns: RequestBuilder<DownloadResponse> 
     */
    open class func getFaxDocumentContentWithRequestBuilder(documentId: String) -> RequestBuilder<DownloadResponse> {
        var path = "/api/v2/fax/documents/{documentId}/content"
        let documentIdPreEscape = "\(documentId)"
        let documentIdPostEscape = documentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{documentId}", with: documentIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<DownloadResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Get a list of fax documents.
     
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter pageNumber: (query) Page number (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFaxDocuments(pageSize: Int? = nil, pageNumber: Int? = nil, completion: @escaping ((_ data: FaxDocumentEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getFaxDocumentsWithRequestBuilder(pageSize: pageSize, pageNumber: pageNumber)
        requestBuilder.execute { (response: Response<FaxDocumentEntityListing>?, error) -> Void in
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
     
     Get a list of fax documents.
     
     - GET /api/v2/fax/documents
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "pageNumber" : 123,
  "entities" : [ {
    "callerAddress" : "aeiou",
    "workspace" : {
      "selfUri" : "aeiou",
      "name" : "aeiou",
      "id" : "aeiou"
    },
    "pageCount" : 123456789,
    "read" : true,
    "downloadSharingUri" : "aeiou",
    "selfUri" : "aeiou",
    "dateModified" : "2000-01-23T04:56:07.000+0000",
    "receiverAddress" : "aeiou",
    "dateCreated" : "2000-01-23T04:56:07.000+0000",
    "filename" : "aeiou",
    "createdBy" : "",
    "contentUri" : "aeiou",
    "name" : "aeiou",
    "contentLength" : 123456789,
    "id" : "aeiou",
    "thumbnails" : [ {
      "imageUri" : "aeiou",
      "width" : 123,
      "resolution" : "aeiou",
      "height" : 123
    } ],
    "contentType" : "aeiou",
    "sharingUri" : "aeiou"
  } ],
  "firstUri" : "aeiou",
  "selfUri" : "aeiou",
  "lastUri" : "aeiou",
  "pageSize" : 123,
  "nextUri" : "aeiou",
  "previousUri" : "aeiou"
}}]
     
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter pageNumber: (query) Page number (optional, default to 1)

     - returns: RequestBuilder<FaxDocumentEntityListing> 
     */
    open class func getFaxDocumentsWithRequestBuilder(pageSize: Int? = nil, pageNumber: Int? = nil) -> RequestBuilder<FaxDocumentEntityListing> {
        let path = "/api/v2/fax/documents"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "pageSize": pageSize?.encodeToJSON(), 
            
            "pageNumber": pageNumber?.encodeToJSON()
            
        ])

        let requestBuilder: RequestBuilder<FaxDocumentEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     Get fax summary
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFaxSummary(completion: @escaping ((_ data: FaxSummary?,_ error: Error?) -> Void)) {
        let requestBuilder = getFaxSummaryWithRequestBuilder()
        requestBuilder.execute { (response: Response<FaxSummary>?, error) -> Void in
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
     
     Get fax summary
     
     - GET /api/v2/fax/summary
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "unreadCount" : 123,
  "readCount" : 123,
  "totalCount" : 123
}}]

     - returns: RequestBuilder<FaxSummary> 
     */
    open class func getFaxSummaryWithRequestBuilder() -> RequestBuilder<FaxSummary> {
        let path = "/api/v2/fax/summary"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<FaxSummary>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Update a fax document.
     
     - parameter documentId: (path) Document ID 
     - parameter body: (body) Document 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putFaxDocument(documentId: String, body: FaxDocument, completion: @escaping ((_ data: FaxDocument?,_ error: Error?) -> Void)) {
        let requestBuilder = putFaxDocumentWithRequestBuilder(documentId: documentId, body: body)
        requestBuilder.execute { (response: Response<FaxDocument>?, error) -> Void in
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
     
     Update a fax document.
     
     - PUT /api/v2/fax/documents/{documentId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "callerAddress" : "aeiou",
  "workspace" : {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "pageCount" : 123456789,
  "read" : true,
  "downloadSharingUri" : "aeiou",
  "selfUri" : "aeiou",
  "dateModified" : "2000-01-23T04:56:07.000+0000",
  "receiverAddress" : "aeiou",
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "filename" : "aeiou",
  "createdBy" : "",
  "contentUri" : "aeiou",
  "name" : "aeiou",
  "contentLength" : 123456789,
  "id" : "aeiou",
  "thumbnails" : [ {
    "imageUri" : "aeiou",
    "width" : 123,
    "resolution" : "aeiou",
    "height" : 123
  } ],
  "contentType" : "aeiou",
  "sharingUri" : "aeiou"
}}]
     
     - parameter documentId: (path) Document ID 
     - parameter body: (body) Document 

     - returns: RequestBuilder<FaxDocument> 
     */
    open class func putFaxDocumentWithRequestBuilder(documentId: String, body: FaxDocument) -> RequestBuilder<FaxDocument> {
        var path = "/api/v2/fax/documents/{documentId}"
        let documentIdPreEscape = "\(documentId)"
        let documentIdPostEscape = documentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{documentId}", with: documentIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<FaxDocument>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", url: url!, body: body)
    }

}
