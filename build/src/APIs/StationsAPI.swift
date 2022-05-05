//
// StationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class StationsAPI {
    
    
    
    /**
     
     Unassigns the user assigned to this station
     
     - parameter stationId: (path) Station ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteStationAssociateduser(stationId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        let requestBuilder = deleteStationAssociateduserWithRequestBuilder(stationId: stationId)
        requestBuilder.execute { (response: Response<Void>?, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     
     Unassigns the user assigned to this station
     
     - DELETE /api/v2/stations/{stationId}/associateduser
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     
     - parameter stationId: (path) Station ID 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteStationAssociateduserWithRequestBuilder(stationId: String) -> RequestBuilder<Void> {
        var path = "/api/v2/stations/{stationId}/associateduser"
        let stationIdPreEscape = "\(stationId)"
        let stationIdPostEscape = stationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{stationId}", with: stationIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", url: url!, body: body)
    }

    
    
    
    /**
     
     Get station.
     
     - parameter stationId: (path) Station ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStation(stationId: String, completion: @escaping ((_ data: Station?,_ error: Error?) -> Void)) {
        let requestBuilder = getStationWithRequestBuilder(stationId: stationId)
        requestBuilder.execute { (response: Response<Station>?, error) -> Void in
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
     
     Get station.
     
     - GET /api/v2/stations/{stationId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "webRtcCallAppearances" : 123,
  "webRtcMediaDscp" : 123,
  "webRtcForceTurn" : true,
  "selfUri" : "aeiou",
  "description" : "aeiou",
  "webRtcUserId" : "aeiou",
  "type" : "aeiou",
  "userId" : "aeiou",
  "secondaryEdge" : "",
  "webRtcPersistentEnabled" : true,
  "name" : "aeiou",
  "lineAppearanceId" : "aeiou",
  "id" : "aeiou",
  "primaryEdge" : {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "status" : "aeiou"
}}]
     
     - parameter stationId: (path) Station ID 

     - returns: RequestBuilder<Station> 
     */
    open class func getStationWithRequestBuilder(stationId: String) -> RequestBuilder<Station> {
        var path = "/api/v2/stations/{stationId}"
        let stationIdPreEscape = "\(stationId)"
        let stationIdPostEscape = stationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{stationId}", with: stationIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Station>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /**
     
     Get the list of available stations.
     
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter pageNumber: (query) Page number (optional, default to 1)
     - parameter sortBy: (query) Sort by (optional, default to name)
     - parameter name: (query) Name (optional)
     - parameter userSelectable: (query) True for stations that the user can select otherwise false (optional)
     - parameter webRtcUserId: (query) Filter for the webRtc station of the webRtcUserId (optional)
     - parameter _id: (query) Comma separated list of stationIds (optional)
     - parameter lineAppearanceId: (query) lineAppearanceId (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStations(pageSize: Int? = nil, pageNumber: Int? = nil, sortBy: String? = nil, name: String? = nil, userSelectable: String? = nil, webRtcUserId: String? = nil, _id: String? = nil, lineAppearanceId: String? = nil, completion: @escaping ((_ data: StationEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getStationsWithRequestBuilder(pageSize: pageSize, pageNumber: pageNumber, sortBy: sortBy, name: name, userSelectable: userSelectable, webRtcUserId: webRtcUserId, _id: _id, lineAppearanceId: lineAppearanceId)
        requestBuilder.execute { (response: Response<StationEntityListing>?, error) -> Void in
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
     
     Get the list of available stations.
     
     - GET /api/v2/stations
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "pageNumber" : 123,
  "entities" : [ {
    "webRtcCallAppearances" : 123,
    "webRtcMediaDscp" : 123,
    "webRtcForceTurn" : true,
    "selfUri" : "aeiou",
    "description" : "aeiou",
    "webRtcUserId" : "aeiou",
    "type" : "aeiou",
    "userId" : "aeiou",
    "secondaryEdge" : "",
    "webRtcPersistentEnabled" : true,
    "name" : "aeiou",
    "lineAppearanceId" : "aeiou",
    "id" : "aeiou",
    "primaryEdge" : {
      "selfUri" : "aeiou",
      "name" : "aeiou",
      "id" : "aeiou"
    },
    "status" : "aeiou"
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
     - parameter sortBy: (query) Sort by (optional, default to name)
     - parameter name: (query) Name (optional)
     - parameter userSelectable: (query) True for stations that the user can select otherwise false (optional)
     - parameter webRtcUserId: (query) Filter for the webRtc station of the webRtcUserId (optional)
     - parameter _id: (query) Comma separated list of stationIds (optional)
     - parameter lineAppearanceId: (query) lineAppearanceId (optional)

     - returns: RequestBuilder<StationEntityListing> 
     */
    open class func getStationsWithRequestBuilder(pageSize: Int? = nil, pageNumber: Int? = nil, sortBy: String? = nil, name: String? = nil, userSelectable: String? = nil, webRtcUserId: String? = nil, _id: String? = nil, lineAppearanceId: String? = nil) -> RequestBuilder<StationEntityListing> {
        let path = "/api/v2/stations"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "pageSize": pageSize?.encodeToJSON(), 
            
            "pageNumber": pageNumber?.encodeToJSON(), 
            
            "sortBy": sortBy, 
            
            "name": name, 
            
            "userSelectable": userSelectable, 
            
            "webRtcUserId": webRtcUserId, 
            
            "id": _id, 
            
            "lineAppearanceId": lineAppearanceId
            
        ])

        let requestBuilder: RequestBuilder<StationEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     Get an organization's StationSettings
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStationsSettings(completion: @escaping ((_ data: StationSettings?,_ error: Error?) -> Void)) {
        let requestBuilder = getStationsSettingsWithRequestBuilder()
        requestBuilder.execute { (response: Response<StationSettings>?, error) -> Void in
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
     
     Get an organization's StationSettings
     
     - GET /api/v2/stations/settings
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "freeSeatingConfiguration" : {
    "freeSeatingState" : "aeiou",
    "ttlMinutes" : 123
  }
}}]

     - returns: RequestBuilder<StationSettings> 
     */
    open class func getStationsSettingsWithRequestBuilder() -> RequestBuilder<StationSettings> {
        let path = "/api/v2/stations/settings"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<StationSettings>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    /**
     
     Patch an organization's StationSettings
     
     - parameter body: (body) Station settings 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patchStationsSettings(body: StationSettings, completion: @escaping ((_ data: StationSettings?,_ error: Error?) -> Void)) {
        let requestBuilder = patchStationsSettingsWithRequestBuilder(body: body)
        requestBuilder.execute { (response: Response<StationSettings>?, error) -> Void in
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
     
     Patch an organization's StationSettings
     
     - PATCH /api/v2/stations/settings
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "freeSeatingConfiguration" : {
    "freeSeatingState" : "aeiou",
    "ttlMinutes" : 123
  }
}}]
     
     - parameter body: (body) Station settings 

     - returns: RequestBuilder<StationSettings> 
     */
    open class func patchStationsSettingsWithRequestBuilder(body: StationSettings) -> RequestBuilder<StationSettings> {
        let path = "/api/v2/stations/settings"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<StationSettings>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", url: url!, body: body)
    }

}
