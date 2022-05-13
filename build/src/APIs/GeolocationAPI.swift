//
// GeolocationAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class GeolocationAPI {
    /**
     Get a organization's GeolocationSettings
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGeolocationsSettings(completion: @escaping ((_ data: GeolocationSettings?,_ error: Error?) -> Void)) {
        let requestBuilder = getGeolocationsSettingsWithRequestBuilder()
        requestBuilder.execute { (response: Response<GeolocationSettings>?, error) -> Void in
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
     Get a organization's GeolocationSettings
     - GET /api/v2/geolocations/settings
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "https://openapi-generator.tech",
  "name" : "name",
  "id" : "id",
  "enabled" : true,
  "mapboxKey" : "mapboxKey"
}, statusCode=200}]

     - returns: RequestBuilder<GeolocationSettings> 
     */
    open class func getGeolocationsSettingsWithRequestBuilder() -> RequestBuilder<GeolocationSettings> {        
        let path = "/api/v2/geolocations/settings"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body: Data? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GeolocationSettings>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    /**
     Get a user's Geolocation
     
     - parameter userId: (path) user Id 
     - parameter clientId: (path) client Id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserGeolocation(userId: String, clientId: String, completion: @escaping ((_ data: Geolocation?,_ error: Error?) -> Void)) {
        let requestBuilder = getUserGeolocationWithRequestBuilder(userId: userId, clientId: clientId)
        requestBuilder.execute { (response: Response<Geolocation>?, error) -> Void in
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
     Get a user's Geolocation
     - GET /api/v2/users/{userId}/geolocations/{clientId}
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "country" : "country",
  "city" : "city",
  "latitude" : 0.8008281904610115,
  "selfUri" : "https://openapi-generator.tech",
  "name" : "name",
  "locations" : [ {
    "images" : "images",
    "address" : {
      "zipcode" : "zipcode",
      "country" : "country",
      "city" : "city",
      "street1" : "street1",
      "countryName" : "countryName",
      "state" : "state",
      "street2" : "street2"
    },
    "notes" : "notes",
    "floorplanImage" : [ {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    }, {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    } ],
    "addressVerificationDetails" : "{}",
    "selfUri" : "https://openapi-generator.tech",
    "profileImage" : [ {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    }, {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    } ],
    "emergencyNumber" : "{}",
    "version" : 5,
    "path" : [ "path", "path" ],
    "addressStored" : true,
    "name" : "name",
    "id" : "id",
    "contactUser" : "{}",
    "state" : "active",
    "addressVerified" : true
  }, {
    "images" : "images",
    "address" : {
      "zipcode" : "zipcode",
      "country" : "country",
      "city" : "city",
      "street1" : "street1",
      "countryName" : "countryName",
      "state" : "state",
      "street2" : "street2"
    },
    "notes" : "notes",
    "floorplanImage" : [ {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    }, {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    } ],
    "addressVerificationDetails" : "{}",
    "selfUri" : "https://openapi-generator.tech",
    "profileImage" : [ {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    }, {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    } ],
    "emergencyNumber" : "{}",
    "version" : 5,
    "path" : [ "path", "path" ],
    "addressStored" : true,
    "name" : "name",
    "id" : "id",
    "contactUser" : "{}",
    "state" : "active",
    "addressVerified" : true
  } ],
  "id" : "id",
  "type" : "type",
  "region" : "region",
  "primary" : true,
  "longitude" : 6.027456183070403
}, statusCode=200}]
     
     - parameter userId: (path) user Id 
     - parameter clientId: (path) client Id 

     - returns: RequestBuilder<Geolocation> 
     */
    open class func getUserGeolocationWithRequestBuilder(userId: String, clientId: String) -> RequestBuilder<Geolocation> {        
        var path = "/api/v2/users/{userId}/geolocations/{clientId}"
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let clientIdPreEscape = "\(clientId)"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body: Data? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Geolocation>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     Patch a organization's GeolocationSettings
     
     - parameter body: (body) Geolocation settings 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patchGeolocationsSettings(body: GeolocationSettings, completion: @escaping ((_ data: GeolocationSettings?,_ error: Error?) -> Void)) {
        let requestBuilder = patchGeolocationsSettingsWithRequestBuilder(body: body)
        requestBuilder.execute { (response: Response<GeolocationSettings>?, error) -> Void in
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
     Patch a organization's GeolocationSettings
     - PATCH /api/v2/geolocations/settings
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "https://openapi-generator.tech",
  "name" : "name",
  "id" : "id",
  "enabled" : true,
  "mapboxKey" : "mapboxKey"
}, statusCode=200}]
     
     - parameter body: (body) Geolocation settings 

     - returns: RequestBuilder<GeolocationSettings> 
     */
    open class func patchGeolocationsSettingsWithRequestBuilder(body: GeolocationSettings) -> RequestBuilder<GeolocationSettings> {        
        let path = "/api/v2/geolocations/settings"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GeolocationSettings>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", url: url!, body: body)
    }

    
    
    
    /**
     Patch a user's Geolocation
     
     - parameter userId: (path) user Id 
     - parameter clientId: (path) client Id 
     - parameter body: (body) Geolocation 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patchUserGeolocation(userId: String, clientId: String, body: Geolocation, completion: @escaping ((_ data: Geolocation?,_ error: Error?) -> Void)) {
        let requestBuilder = patchUserGeolocationWithRequestBuilder(userId: userId, clientId: clientId, body: body)
        requestBuilder.execute { (response: Response<Geolocation>?, error) -> Void in
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
     Patch a user's Geolocation
     - PATCH /api/v2/users/{userId}/geolocations/{clientId}
     - The geolocation object can be patched one of three ways. Option 1: Set the 'primary' property to true. This will set the client as the user's primary geolocation source.  Option 2: Provide the 'latitude' and 'longitude' values.  This will enqueue an asynchronous update of the 'city', 'region', and 'country', generating a notification. A subsequent GET operation will include the new values for 'city', 'region' and 'country'.  Option 3:  Provide the 'city', 'region', 'country' values.  Option 1 can be combined with Option 2 or Option 3.  For example, update the client as primary and provide latitude and longitude values.
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "country" : "country",
  "city" : "city",
  "latitude" : 0.8008281904610115,
  "selfUri" : "https://openapi-generator.tech",
  "name" : "name",
  "locations" : [ {
    "images" : "images",
    "address" : {
      "zipcode" : "zipcode",
      "country" : "country",
      "city" : "city",
      "street1" : "street1",
      "countryName" : "countryName",
      "state" : "state",
      "street2" : "street2"
    },
    "notes" : "notes",
    "floorplanImage" : [ {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    }, {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    } ],
    "addressVerificationDetails" : "{}",
    "selfUri" : "https://openapi-generator.tech",
    "profileImage" : [ {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    }, {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    } ],
    "emergencyNumber" : "{}",
    "version" : 5,
    "path" : [ "path", "path" ],
    "addressStored" : true,
    "name" : "name",
    "id" : "id",
    "contactUser" : "{}",
    "state" : "active",
    "addressVerified" : true
  }, {
    "images" : "images",
    "address" : {
      "zipcode" : "zipcode",
      "country" : "country",
      "city" : "city",
      "street1" : "street1",
      "countryName" : "countryName",
      "state" : "state",
      "street2" : "street2"
    },
    "notes" : "notes",
    "floorplanImage" : [ {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    }, {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    } ],
    "addressVerificationDetails" : "{}",
    "selfUri" : "https://openapi-generator.tech",
    "profileImage" : [ {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    }, {
      "imageUri" : "imageUri",
      "resolution" : "resolution"
    } ],
    "emergencyNumber" : "{}",
    "version" : 5,
    "path" : [ "path", "path" ],
    "addressStored" : true,
    "name" : "name",
    "id" : "id",
    "contactUser" : "{}",
    "state" : "active",
    "addressVerified" : true
  } ],
  "id" : "id",
  "type" : "type",
  "region" : "region",
  "primary" : true,
  "longitude" : 6.027456183070403
}, statusCode=200}]
     
     - parameter userId: (path) user Id 
     - parameter clientId: (path) client Id 
     - parameter body: (body) Geolocation 

     - returns: RequestBuilder<Geolocation> 
     */
    open class func patchUserGeolocationWithRequestBuilder(userId: String, clientId: String, body: Geolocation) -> RequestBuilder<Geolocation> {        
        var path = "/api/v2/users/{userId}/geolocations/{clientId}"
        let userIdPreEscape = "\(userId)"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let clientIdPreEscape = "\(clientId)"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Geolocation>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", url: url!, body: body)
    }

}
