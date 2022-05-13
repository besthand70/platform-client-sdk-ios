//
// LocationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class LocationsAPI {
    
    /**
     Delete a location
     
     - parameter locationId: (path) Location ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteLocation(locationId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        let requestBuilder = deleteLocationWithRequestBuilder(locationId: locationId)
        requestBuilder.execute { (response: Response<Void>?, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     Delete a location
     - DELETE /api/v2/locations/{locationId}
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     
     - parameter locationId: (path) Location ID 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteLocationWithRequestBuilder(locationId: String) -> RequestBuilder<Void> {        
        var path = "/api/v2/locations/{locationId}"
        let locationIdPreEscape = "\(locationId)"
        let locationIdPostEscape = locationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{locationId}", with: locationIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body: Data? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", url: url!, body: body)
    }

    
    
    /**
     Get Location by ID.
     
     - parameter locationId: (path) Location ID 
     - parameter expand: (query) Which fields, if any, to expand (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLocation(locationId: String, expand: [String]? = nil, completion: @escaping ((_ data: LocationDefinition?,_ error: Error?) -> Void)) {
        let requestBuilder = getLocationWithRequestBuilder(locationId: locationId, expand: expand)
        requestBuilder.execute { (response: Response<LocationDefinition>?, error) -> Void in
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
     Get Location by ID.
     - GET /api/v2/locations/{locationId}
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
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
}, statusCode=200}]
     
     - parameter locationId: (path) Location ID 
     - parameter expand: (query) Which fields, if any, to expand (optional)

     - returns: RequestBuilder<LocationDefinition> 
     */
    open class func getLocationWithRequestBuilder(locationId: String, expand: [String]? = nil) -> RequestBuilder<LocationDefinition> {        
        var path = "/api/v2/locations/{locationId}"
        let locationIdPreEscape = "\(locationId)"
        let locationIdPostEscape = locationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{locationId}", with: locationIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body: Data? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "expand": expand
        ])

        let requestBuilder: RequestBuilder<LocationDefinition>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     Get sublocations for location ID.
     
     - parameter locationId: (path) Location ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLocationSublocations(locationId: String, completion: @escaping ((_ data: LocationEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getLocationSublocationsWithRequestBuilder(locationId: locationId)
        requestBuilder.execute { (response: Response<LocationEntityListing>?, error) -> Void in
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
     Get sublocations for location ID.
     - GET /api/v2/locations/{locationId}/sublocations
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 1,
  "pageCount" : 5,
  "pageNumber" : 6,
  "entities" : [ {
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
  "firstUri" : "https://openapi-generator.tech",
  "lastUri" : "https://openapi-generator.tech",
  "selfUri" : "https://openapi-generator.tech",
  "pageSize" : 0,
  "previousUri" : "https://openapi-generator.tech",
  "nextUri" : "https://openapi-generator.tech"
}, statusCode=200}]
     
     - parameter locationId: (path) Location ID 

     - returns: RequestBuilder<LocationEntityListing> 
     */
    open class func getLocationSublocationsWithRequestBuilder(locationId: String) -> RequestBuilder<LocationEntityListing> {        
        var path = "/api/v2/locations/{locationId}/sublocations"
        let locationIdPreEscape = "\(locationId)"
        let locationIdPostEscape = locationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{locationId}", with: locationIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body: Data? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<LocationEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    public enum SortOrder_getLocations: String { 
        case asc = "asc"
        case desc = "desc"
    }

    
    /**
     Get a list of all locations.
     
     - parameter pageSize: (query) Page size (optional)
     - parameter pageNumber: (query) Page number (optional)
     - parameter _id: (query) id (optional)
     - parameter sortOrder: (query) Sort order (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLocations(pageSize: Int? = nil, pageNumber: Int? = nil, _id: [String]? = nil, sortOrder: SortOrder_getLocations? = nil, completion: @escaping ((_ data: LocationEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getLocationsWithRequestBuilder(pageSize: pageSize, pageNumber: pageNumber, _id: _id, sortOrder: sortOrder)
        requestBuilder.execute { (response: Response<LocationEntityListing>?, error) -> Void in
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
     Get a list of all locations.
     - GET /api/v2/locations
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 1,
  "pageCount" : 5,
  "pageNumber" : 6,
  "entities" : [ {
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
  "firstUri" : "https://openapi-generator.tech",
  "lastUri" : "https://openapi-generator.tech",
  "selfUri" : "https://openapi-generator.tech",
  "pageSize" : 0,
  "previousUri" : "https://openapi-generator.tech",
  "nextUri" : "https://openapi-generator.tech"
}, statusCode=200}]
     
     - parameter pageSize: (query) Page size (optional)
     - parameter pageNumber: (query) Page number (optional)
     - parameter _id: (query) id (optional)
     - parameter sortOrder: (query) Sort order (optional)

     - returns: RequestBuilder<LocationEntityListing> 
     */
    open class func getLocationsWithRequestBuilder(pageSize: Int? = nil, pageNumber: Int? = nil, _id: [String]? = nil, sortOrder: SortOrder_getLocations? = nil) -> RequestBuilder<LocationEntityListing> {        
        let path = "/api/v2/locations"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body: Data? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "pageSize": pageSize?.encodeToJSON(), 
            "pageNumber": pageNumber?.encodeToJSON(), 
            "id": _id, 
            "sortOrder": sortOrder?.rawValue
        ])

        let requestBuilder: RequestBuilder<LocationEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    /**
     Search locations using the q64 value returned from a previous search
     
     - parameter q64: (query) q64 
     - parameter expand: (query) Provides more details about a specified resource (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLocationsSearch(q64: String, expand: [String]? = nil, completion: @escaping ((_ data: LocationsSearchResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = getLocationsSearchWithRequestBuilder(q64: q64, expand: expand)
        requestBuilder.execute { (response: Response<LocationsSearchResponse>?, error) -> Void in
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
     Search locations using the q64 value returned from a previous search
     - GET /api/v2/locations/search
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "pageCount" : 6,
  "types" : [ "types", "types" ],
  "pageNumber" : 5,
  "previousPage" : "previousPage",
  "nextPage" : "nextPage",
  "pageSize" : 1,
  "currentPage" : "currentPage",
  "results" : [ {
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
  } ]
}, statusCode=200}]
     
     - parameter q64: (query) q64 
     - parameter expand: (query) Provides more details about a specified resource (optional)

     - returns: RequestBuilder<LocationsSearchResponse> 
     */
    open class func getLocationsSearchWithRequestBuilder(q64: String, expand: [String]? = nil) -> RequestBuilder<LocationsSearchResponse> {        
        let path = "/api/v2/locations/search"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body: Data? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "q64": q64, 
            "expand": expand
        ])

        let requestBuilder: RequestBuilder<LocationsSearchResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    /**
     Update a location
     
     - parameter locationId: (path) Location ID 
     - parameter body: (body) Location 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patchLocation(locationId: String, body: LocationUpdateDefinition, completion: @escaping ((_ data: LocationDefinition?,_ error: Error?) -> Void)) {
        let requestBuilder = patchLocationWithRequestBuilder(locationId: locationId, body: body)
        requestBuilder.execute { (response: Response<LocationDefinition>?, error) -> Void in
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
     Update a location
     - PATCH /api/v2/locations/{locationId}
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
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
}, statusCode=200}]
     
     - parameter locationId: (path) Location ID 
     - parameter body: (body) Location 

     - returns: RequestBuilder<LocationDefinition> 
     */
    open class func patchLocationWithRequestBuilder(locationId: String, body: LocationUpdateDefinition) -> RequestBuilder<LocationDefinition> {        
        var path = "/api/v2/locations/{locationId}"
        let locationIdPreEscape = "\(locationId)"
        let locationIdPostEscape = locationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{locationId}", with: locationIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<LocationDefinition>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", url: url!, body: body)
    }

    
    /**
     Create a location
     
     - parameter body: (body) Location 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLocations(body: LocationCreateDefinition, completion: @escaping ((_ data: LocationDefinition?,_ error: Error?) -> Void)) {
        let requestBuilder = postLocationsWithRequestBuilder(body: body)
        requestBuilder.execute { (response: Response<LocationDefinition>?, error) -> Void in
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
     Create a location
     - POST /api/v2/locations
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
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
}, statusCode=200}]
     
     - parameter body: (body) Location 

     - returns: RequestBuilder<LocationDefinition> 
     */
    open class func postLocationsWithRequestBuilder(body: LocationCreateDefinition) -> RequestBuilder<LocationDefinition> {        
        let path = "/api/v2/locations"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<LocationDefinition>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    /**
     Search locations
     
     - parameter body: (body) Search request options 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postLocationsSearch(body: LocationSearchRequest, completion: @escaping ((_ data: LocationsSearchResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = postLocationsSearchWithRequestBuilder(body: body)
        requestBuilder.execute { (response: Response<LocationsSearchResponse>?, error) -> Void in
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
     Search locations
     - POST /api/v2/locations/search
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "pageCount" : 6,
  "types" : [ "types", "types" ],
  "pageNumber" : 5,
  "previousPage" : "previousPage",
  "nextPage" : "nextPage",
  "pageSize" : 1,
  "currentPage" : "currentPage",
  "results" : [ {
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
  } ]
}, statusCode=200}]
     
     - parameter body: (body) Search request options 

     - returns: RequestBuilder<LocationsSearchResponse> 
     */
    open class func postLocationsSearchWithRequestBuilder(body: LocationSearchRequest) -> RequestBuilder<LocationsSearchResponse> {        
        let path = "/api/v2/locations/search"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<LocationsSearchResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

}
