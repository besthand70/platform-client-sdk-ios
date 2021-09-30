//
// DataExtensionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DataExtensionsAPI {
    
    
    public enum CoretypeName_getDataextensionsCoretype: String { 
        case text = "text"
        case longtext = "longtext"
        case url = "url"
        case identifier = "identifier"
        case _enum = "enum"
        case date = "date"
        case datetime = "datetime"
        case integer = "integer"
        case number = "number"
        case checkbox = "checkbox"
        case tag = "tag"
    }

    
    
    /**
     
     Get a specific named core type.
     
     - parameter coretypeName: (path) The core type&#39;s name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDataextensionsCoretype(coretypeName: CoretypeName_getDataextensionsCoretype, completion: @escaping ((_ data: Coretype?,_ error: Error?) -> Void)) {
        let requestBuilder = getDataextensionsCoretypeWithRequestBuilder(coretypeName: coretypeName)
        requestBuilder.execute { (response: Response<Coretype>?, error) -> Void in
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
     
     Get a specific named core type.
     
     - GET /api/v2/dataextensions/coretypes/{coretypeName}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "schema" : {
    "pattern" : "aeiou",
    "description" : "aeiou",
    "title" : "aeiou",
    "type" : "[\"string\"] for a text-based core type, [\"integer\"] for a numeric core type, or [\"boolean\", \"null\"] for the checkbox core type",
    "items" : {
      "pattern" : "aeiou",
      "type" : "aeiou"
    }
  },
  "current" : true,
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "id" : "aeiou",
  "version" : 123,
  "itemValidationFields" : [ "aeiou" ],
  "itemValidationLimits" : {
    "minLength" : "",
    "maxLength" : ""
  },
  "validationFields" : [ "aeiou" ],
  "validationLimits" : {
    "minItems" : "",
    "maxItems" : "",
    "minLength" : {
      "min" : 123456789,
      "max" : 123456789
    },
    "maximum" : "",
    "minimum" : "",
    "maxLength" : {
      "min" : 123456789,
      "max" : 123456789
    }
  }
}}]
     
     - parameter coretypeName: (path) The core type&#39;s name 

     - returns: RequestBuilder<Coretype> 
     */
    open class func getDataextensionsCoretypeWithRequestBuilder(coretypeName: CoretypeName_getDataextensionsCoretype) -> RequestBuilder<Coretype> {
        var path = "/api/v2/dataextensions/coretypes/{coretypeName}"
        let coretypeNamePreEscape = "\(coretypeName.rawValue)"
        let coretypeNamePostEscape = coretypeNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{coretypeName}", with: coretypeNamePostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Coretype>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     Get the core types from which all schemas are built.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDataextensionsCoretypes(completion: @escaping ((_ data: CoretypeListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getDataextensionsCoretypesWithRequestBuilder()
        requestBuilder.execute { (response: Response<CoretypeListing>?, error) -> Void in
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
     
     Get the core types from which all schemas are built.
     
     - GET /api/v2/dataextensions/coretypes
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "entities" : [ {
    "schema" : {
      "pattern" : "aeiou",
      "description" : "aeiou",
      "title" : "aeiou",
      "type" : "[\"string\"] for a text-based core type, [\"integer\"] for a numeric core type, or [\"boolean\", \"null\"] for the checkbox core type",
      "items" : {
        "pattern" : "aeiou",
        "type" : "aeiou"
      }
    },
    "current" : true,
    "dateCreated" : "2000-01-23T04:56:07.000+0000",
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou",
    "version" : 123,
    "itemValidationFields" : [ "aeiou" ],
    "itemValidationLimits" : {
      "minLength" : "",
      "maxLength" : ""
    },
    "validationFields" : [ "aeiou" ],
    "validationLimits" : {
      "minItems" : "",
      "maxItems" : "",
      "minLength" : {
        "min" : 123456789,
        "max" : 123456789
      },
      "maximum" : "",
      "minimum" : "",
      "maxLength" : {
        "min" : 123456789,
        "max" : 123456789
      }
    }
  } ],
  "selfUri" : "aeiou"
}}]

     - returns: RequestBuilder<CoretypeListing> 
     */
    open class func getDataextensionsCoretypesWithRequestBuilder() -> RequestBuilder<CoretypeListing> {
        let path = "/api/v2/dataextensions/coretypes"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CoretypeListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     Get quantitative limits on schemas
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDataextensionsLimits(completion: @escaping ((_ data: SchemaQuantityLimits?,_ error: Error?) -> Void)) {
        let requestBuilder = getDataextensionsLimitsWithRequestBuilder()
        requestBuilder.execute { (response: Response<SchemaQuantityLimits>?, error) -> Void in
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
     
     Get quantitative limits on schemas
     
     - GET /api/v2/dataextensions/limits
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "minSchemaDescriptionCharacters" : "\"minSchemaDescriptionCharacters\":0",
  "maxFieldDescriptionCharacters" : "\"maxFieldDescriptionCharacters\":200",
  "selfUri" : "aeiou",
  "minFieldDescriptionCharacters" : "\"minFieldDescriptionCharacters\":0",
  "maxNumberOfFieldsPerSchema" : "\"maxNumberOfFieldsPerSchema\":25",
  "minSchemaNameCharacters" : "\"minSchemaNameCharacters\":1",
  "minFieldNameCharacters" : "\"minFieldNameCharacters\":1",
  "maxNumberOfSchemasPerOrg" : "\"maxNumberOfSchemasPerOrg\":20",
  "name" : "aeiou",
  "id" : "aeiou",
  "maxFieldNameCharacters" : "\"minFieldNameCharacters\":100",
  "maxSchemaDescriptionCharacters" : "\"maxSchemaDescriptionCharacters\":200",
  "maxSchemaNameCharacters" : "\"maxSchemaNameCharacters\":50",
  "maxNumberOfFieldsPerOrg" : "\"maxNumberOfFieldsPerOrg\":500"
}}]

     - returns: RequestBuilder<SchemaQuantityLimits> 
     */
    open class func getDataextensionsLimitsWithRequestBuilder() -> RequestBuilder<SchemaQuantityLimits> {
        let path = "/api/v2/dataextensions/limits"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SchemaQuantityLimits>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

}
