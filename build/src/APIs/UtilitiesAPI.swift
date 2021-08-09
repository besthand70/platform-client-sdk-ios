//
// UtilitiesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class UtilitiesAPI {
    
    /**
     
     Get the current system date/time
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDate(completion: @escaping ((_ data: ServerDate?,_ error: Error?) -> Void)) {
        let requestBuilder = getDateWithRequestBuilder()
        requestBuilder.execute { (response: Response<ServerDate>?, error) -> Void in
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
     
     Get the current system date/time
     
     - GET /api/v2/date
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "currentDate" : "2000-01-23T04:56:07.000+0000"
}}]

     - returns: RequestBuilder<ServerDate> 
     */
    open class func getDateWithRequestBuilder() -> RequestBuilder<ServerDate> {
        let path = "/api/v2/date"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ServerDate>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     Get public ip address ranges for PureCloud
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getIpranges(completion: @escaping ((_ data: IpAddressRangeListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getIprangesWithRequestBuilder()
        requestBuilder.execute { (response: Response<IpAddressRangeListing>?, error) -> Void in
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
     
     Get public ip address ranges for PureCloud
     
     - GET /api/v2/ipranges
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "entities" : [ {
    "service" : "aeiou",
    "cidr" : "aeiou",
    "region" : "aeiou"
  } ]
}}]

     - returns: RequestBuilder<IpAddressRangeListing> 
     */
    open class func getIprangesWithRequestBuilder() -> RequestBuilder<IpAddressRangeListing> {
        let path = "/api/v2/ipranges"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<IpAddressRangeListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Get time zones list
     
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter pageNumber: (query) Page number (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTimezones(pageSize: Int? = nil, pageNumber: Int? = nil, completion: @escaping ((_ data: TimeZoneEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getTimezonesWithRequestBuilder(pageSize: pageSize, pageNumber: pageNumber)
        requestBuilder.execute { (response: Response<TimeZoneEntityListing>?, error) -> Void in
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
     
     Get time zones list
     
     - GET /api/v2/timezones
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "pageNumber" : 123,
  "entities" : [ {
    "offset" : 123456789,
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
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

     - returns: RequestBuilder<TimeZoneEntityListing> 
     */
    open class func getTimezonesWithRequestBuilder(pageSize: Int? = nil, pageNumber: Int? = nil) -> RequestBuilder<TimeZoneEntityListing> {
        let path = "/api/v2/timezones"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "pageSize": pageSize?.encodeToJSON(), 
            
            "pageNumber": pageNumber?.encodeToJSON()
            
        ])

        let requestBuilder: RequestBuilder<TimeZoneEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     301 redirect.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUploadsV1Publicasset(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        let requestBuilder = getUploadsV1PublicassetWithRequestBuilder()
        requestBuilder.execute { (response: Response<Void>?, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     
     301 redirect.
     
     - GET /uploads/v1/publicassets/{subResources}
     - 

     - returns: RequestBuilder<Void> 
     */
    open class func getUploadsV1PublicassetWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/uploads/v1/publicassets/{subResources}"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     301 redirect.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getWebdeploymentsV1SubResources(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        let requestBuilder = getWebdeploymentsV1SubResourcesWithRequestBuilder()
        requestBuilder.execute { (response: Response<Void>?, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     
     301 redirect.
     
     - GET /webdeployments/v1/{subResources}
     - 

     - returns: RequestBuilder<Void> 
     */
    open class func getWebdeploymentsV1SubResourcesWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/webdeployments/v1/{subResources}"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    /**
     
     Returns the information about an X509 PEM encoded certificate or certificate chain.
     
     - parameter body: (body) Certificate 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postCertificateDetails(body: Certificate, completion: @escaping ((_ data: ParsedCertificate?,_ error: Error?) -> Void)) {
        let requestBuilder = postCertificateDetailsWithRequestBuilder(body: body)
        requestBuilder.execute { (response: Response<ParsedCertificate>?, error) -> Void in
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
     
     Returns the information about an X509 PEM encoded certificate or certificate chain.
     
     - POST /api/v2/certificate/details
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "certificateDetails" : [ {
    "valid" : true,
    "signatureValid" : true,
    "expired" : true,
    "subject" : "aeiou",
    "issueDate" : "2000-01-23T04:56:07.000+0000",
    "issuer" : "aeiou",
    "expirationDate" : "2000-01-23T04:56:07.000+0000"
  } ]
}}]
     
     - parameter body: (body) Certificate 

     - returns: RequestBuilder<ParsedCertificate> 
     */
    open class func postCertificateDetailsWithRequestBuilder(body: Certificate) -> RequestBuilder<ParsedCertificate> {
        let path = "/api/v2/certificate/details"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ParsedCertificate>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

}
