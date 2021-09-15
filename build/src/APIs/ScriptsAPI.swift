//
// ScriptsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class ScriptsAPI {
    
    
    
    /**
     
     Get a script
     
     - parameter scriptId: (path) Script ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScript(scriptId: String, completion: @escaping ((_ data: Script?,_ error: Error?) -> Void)) {
        let requestBuilder = getScriptWithRequestBuilder(scriptId: scriptId)
        requestBuilder.execute { (response: Response<Script>?, error) -> Void in
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
     
     Get a script
     
     - GET /api/v2/scripts/{scriptId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "variables" : "{}",
  "selfUri" : "aeiou",
  "customActions" : "{}",
  "versionDate" : "2000-01-23T04:56:07.000+0000",
  "features" : "{}",
  "versionId" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+0000",
  "pages" : [ {
    "versionId" : "aeiou",
    "createdDate" : "2000-01-23T04:56:07.000+0000",
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "modifiedDate" : "2000-01-23T04:56:07.000+0000",
    "id" : "aeiou",
    "rootContainer" : {
      "key" : "{}"
    },
    "properties" : {
      "key" : "{}"
    }
  } ],
  "startPageName" : "aeiou",
  "name" : "aeiou",
  "modifiedDate" : "2000-01-23T04:56:07.000+0000",
  "startPageId" : "aeiou",
  "id" : "aeiou",
  "publishedDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter scriptId: (path) Script ID 

     - returns: RequestBuilder<Script> 
     */
    open class func getScriptWithRequestBuilder(scriptId: String) -> RequestBuilder<Script> {
        var path = "/api/v2/scripts/{scriptId}"
        let scriptIdPreEscape = "\(scriptId)"
        let scriptIdPostEscape = scriptIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scriptId}", with: scriptIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Script>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    
    
    /**
     
     Get a page
     
     - parameter scriptId: (path) Script ID 
     - parameter pageId: (path) Page ID 
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScriptPage(scriptId: String, pageId: String, scriptDataVersion: String? = nil, completion: @escaping ((_ data: Page?,_ error: Error?) -> Void)) {
        let requestBuilder = getScriptPageWithRequestBuilder(scriptId: scriptId, pageId: pageId, scriptDataVersion: scriptDataVersion)
        requestBuilder.execute { (response: Response<Page>?, error) -> Void in
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
     
     Get a page
     
     - GET /api/v2/scripts/{scriptId}/pages/{pageId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "versionId" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+0000",
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "modifiedDate" : "2000-01-23T04:56:07.000+0000",
  "id" : "aeiou",
  "rootContainer" : {
    "key" : "{}"
  },
  "properties" : {
    "key" : "{}"
  }
}}]
     
     - parameter scriptId: (path) Script ID 
     - parameter pageId: (path) Page ID 
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)

     - returns: RequestBuilder<Page> 
     */
    open class func getScriptPageWithRequestBuilder(scriptId: String, pageId: String, scriptDataVersion: String? = nil) -> RequestBuilder<Page> {
        var path = "/api/v2/scripts/{scriptId}/pages/{pageId}"
        let scriptIdPreEscape = "\(scriptId)"
        let scriptIdPostEscape = scriptIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scriptId}", with: scriptIdPostEscape, options: .literal, range: nil)
        let pageIdPreEscape = "\(pageId)"
        let pageIdPostEscape = pageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{pageId}", with: pageIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "scriptDataVersion": scriptDataVersion
            
        ])

        let requestBuilder: RequestBuilder<Page>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Get the list of pages
     
     - parameter scriptId: (path) Script ID 
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScriptPages(scriptId: String, scriptDataVersion: String? = nil, completion: @escaping ((_ data: [Page]?,_ error: Error?) -> Void)) {
        let requestBuilder = getScriptPagesWithRequestBuilder(scriptId: scriptId, scriptDataVersion: scriptDataVersion)
        requestBuilder.execute { (response: Response<[Page]>?, error) -> Void in
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
     
     Get the list of pages
     
     - GET /api/v2/scripts/{scriptId}/pages
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example=[ {
  "versionId" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+0000",
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "modifiedDate" : "2000-01-23T04:56:07.000+0000",
  "id" : "aeiou",
  "rootContainer" : {
    "key" : "{}"
  },
  "properties" : {
    "key" : "{}"
  }
} ]}]
     
     - parameter scriptId: (path) Script ID 
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)

     - returns: RequestBuilder<[Page]> 
     */
    open class func getScriptPagesWithRequestBuilder(scriptId: String, scriptDataVersion: String? = nil) -> RequestBuilder<[Page]> {
        var path = "/api/v2/scripts/{scriptId}/pages"
        let scriptIdPreEscape = "\(scriptId)"
        let scriptIdPostEscape = scriptIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scriptId}", with: scriptIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "scriptDataVersion": scriptDataVersion
            
        ])

        let requestBuilder: RequestBuilder<[Page]>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    public enum SortBy_getScripts: String { 
        case modifieddate = "modifiedDate"
        case createddate = "createdDate"
    }

    
    
    
    public enum SortOrder_getScripts: String { 
        case ascending = "ascending"
        case descending = "descending"
    }

    
    
    
    
    /**
     
     Get the list of scripts
     
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter pageNumber: (query) Page number (optional, default to 1)
     - parameter expand: (query) Expand (optional)
     - parameter name: (query) Name filter (optional)
     - parameter feature: (query) Feature filter (optional)
     - parameter flowId: (query) Secure flow id filter (optional)
     - parameter sortBy: (query) SortBy (optional)
     - parameter sortOrder: (query) SortOrder (optional)
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScripts(pageSize: Int? = nil, pageNumber: Int? = nil, expand: String? = nil, name: String? = nil, feature: String? = nil, flowId: String? = nil, sortBy: SortBy_getScripts? = nil, sortOrder: SortOrder_getScripts? = nil, scriptDataVersion: String? = nil, completion: @escaping ((_ data: ScriptEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getScriptsWithRequestBuilder(pageSize: pageSize, pageNumber: pageNumber, expand: expand, name: name, feature: feature, flowId: flowId, sortBy: sortBy, sortOrder: sortOrder, scriptDataVersion: scriptDataVersion)
        requestBuilder.execute { (response: Response<ScriptEntityListing>?, error) -> Void in
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
     
     Get the list of scripts
     
     - GET /api/v2/scripts
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "pageNumber" : 123,
  "entities" : [ {
    "variables" : "{}",
    "selfUri" : "aeiou",
    "customActions" : "{}",
    "versionDate" : "2000-01-23T04:56:07.000+0000",
    "features" : "{}",
    "versionId" : "aeiou",
    "createdDate" : "2000-01-23T04:56:07.000+0000",
    "pages" : [ {
      "versionId" : "aeiou",
      "createdDate" : "2000-01-23T04:56:07.000+0000",
      "selfUri" : "aeiou",
      "name" : "aeiou",
      "modifiedDate" : "2000-01-23T04:56:07.000+0000",
      "id" : "aeiou",
      "rootContainer" : {
        "key" : "{}"
      },
      "properties" : {
        "key" : "{}"
      }
    } ],
    "startPageName" : "aeiou",
    "name" : "aeiou",
    "modifiedDate" : "2000-01-23T04:56:07.000+0000",
    "startPageId" : "aeiou",
    "id" : "aeiou",
    "publishedDate" : "2000-01-23T04:56:07.000+0000"
  } ],
  "firstUri" : "aeiou",
  "selfUri" : "aeiou",
  "lastUri" : "aeiou",
  "pageSize" : 123,
  "previousUri" : "aeiou",
  "nextUri" : "aeiou"
}}]
     
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter pageNumber: (query) Page number (optional, default to 1)
     - parameter expand: (query) Expand (optional)
     - parameter name: (query) Name filter (optional)
     - parameter feature: (query) Feature filter (optional)
     - parameter flowId: (query) Secure flow id filter (optional)
     - parameter sortBy: (query) SortBy (optional)
     - parameter sortOrder: (query) SortOrder (optional)
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)

     - returns: RequestBuilder<ScriptEntityListing> 
     */
    open class func getScriptsWithRequestBuilder(pageSize: Int? = nil, pageNumber: Int? = nil, expand: String? = nil, name: String? = nil, feature: String? = nil, flowId: String? = nil, sortBy: SortBy_getScripts? = nil, sortOrder: SortOrder_getScripts? = nil, scriptDataVersion: String? = nil) -> RequestBuilder<ScriptEntityListing> {
        let path = "/api/v2/scripts"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "pageSize": pageSize?.encodeToJSON(), 
            
            "pageNumber": pageNumber?.encodeToJSON(), 
            
            "expand": expand, 
            
            "name": name, 
            
            "feature": feature, 
            
            "flowId": flowId, 
            
            "sortBy": sortBy?.rawValue, 
            
            "sortOrder": sortOrder?.rawValue, 
            
            "scriptDataVersion": scriptDataVersion
            
        ])

        let requestBuilder: RequestBuilder<ScriptEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /**
     
     Get the published scripts.
     
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter pageNumber: (query) Page number (optional, default to 1)
     - parameter expand: (query) Expand (optional)
     - parameter name: (query) Name filter (optional)
     - parameter feature: (query) Feature filter (optional)
     - parameter flowId: (query) Secure flow id filter (optional)
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScriptsPublished(pageSize: Int? = nil, pageNumber: Int? = nil, expand: String? = nil, name: String? = nil, feature: String? = nil, flowId: String? = nil, scriptDataVersion: String? = nil, completion: @escaping ((_ data: ScriptEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getScriptsPublishedWithRequestBuilder(pageSize: pageSize, pageNumber: pageNumber, expand: expand, name: name, feature: feature, flowId: flowId, scriptDataVersion: scriptDataVersion)
        requestBuilder.execute { (response: Response<ScriptEntityListing>?, error) -> Void in
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
     
     Get the published scripts.
     
     - GET /api/v2/scripts/published
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "pageNumber" : 123,
  "entities" : [ {
    "variables" : "{}",
    "selfUri" : "aeiou",
    "customActions" : "{}",
    "versionDate" : "2000-01-23T04:56:07.000+0000",
    "features" : "{}",
    "versionId" : "aeiou",
    "createdDate" : "2000-01-23T04:56:07.000+0000",
    "pages" : [ {
      "versionId" : "aeiou",
      "createdDate" : "2000-01-23T04:56:07.000+0000",
      "selfUri" : "aeiou",
      "name" : "aeiou",
      "modifiedDate" : "2000-01-23T04:56:07.000+0000",
      "id" : "aeiou",
      "rootContainer" : {
        "key" : "{}"
      },
      "properties" : {
        "key" : "{}"
      }
    } ],
    "startPageName" : "aeiou",
    "name" : "aeiou",
    "modifiedDate" : "2000-01-23T04:56:07.000+0000",
    "startPageId" : "aeiou",
    "id" : "aeiou",
    "publishedDate" : "2000-01-23T04:56:07.000+0000"
  } ],
  "firstUri" : "aeiou",
  "selfUri" : "aeiou",
  "lastUri" : "aeiou",
  "pageSize" : 123,
  "previousUri" : "aeiou",
  "nextUri" : "aeiou"
}}]
     
     - parameter pageSize: (query) Page size (optional, default to 25)
     - parameter pageNumber: (query) Page number (optional, default to 1)
     - parameter expand: (query) Expand (optional)
     - parameter name: (query) Name filter (optional)
     - parameter feature: (query) Feature filter (optional)
     - parameter flowId: (query) Secure flow id filter (optional)
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)

     - returns: RequestBuilder<ScriptEntityListing> 
     */
    open class func getScriptsPublishedWithRequestBuilder(pageSize: Int? = nil, pageNumber: Int? = nil, expand: String? = nil, name: String? = nil, feature: String? = nil, flowId: String? = nil, scriptDataVersion: String? = nil) -> RequestBuilder<ScriptEntityListing> {
        let path = "/api/v2/scripts/published"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "pageSize": pageSize?.encodeToJSON(), 
            
            "pageNumber": pageNumber?.encodeToJSON(), 
            
            "expand": expand, 
            
            "name": name, 
            
            "feature": feature, 
            
            "flowId": flowId, 
            
            "scriptDataVersion": scriptDataVersion
            
        ])

        let requestBuilder: RequestBuilder<ScriptEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Get the published script.
     
     - parameter scriptId: (path) Script ID 
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScriptsPublishedScriptId(scriptId: String, scriptDataVersion: String? = nil, completion: @escaping ((_ data: Script?,_ error: Error?) -> Void)) {
        let requestBuilder = getScriptsPublishedScriptIdWithRequestBuilder(scriptId: scriptId, scriptDataVersion: scriptDataVersion)
        requestBuilder.execute { (response: Response<Script>?, error) -> Void in
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
     
     Get the published script.
     
     - GET /api/v2/scripts/published/{scriptId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "variables" : "{}",
  "selfUri" : "aeiou",
  "customActions" : "{}",
  "versionDate" : "2000-01-23T04:56:07.000+0000",
  "features" : "{}",
  "versionId" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+0000",
  "pages" : [ {
    "versionId" : "aeiou",
    "createdDate" : "2000-01-23T04:56:07.000+0000",
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "modifiedDate" : "2000-01-23T04:56:07.000+0000",
    "id" : "aeiou",
    "rootContainer" : {
      "key" : "{}"
    },
    "properties" : {
      "key" : "{}"
    }
  } ],
  "startPageName" : "aeiou",
  "name" : "aeiou",
  "modifiedDate" : "2000-01-23T04:56:07.000+0000",
  "startPageId" : "aeiou",
  "id" : "aeiou",
  "publishedDate" : "2000-01-23T04:56:07.000+0000"
}}]
     
     - parameter scriptId: (path) Script ID 
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)

     - returns: RequestBuilder<Script> 
     */
    open class func getScriptsPublishedScriptIdWithRequestBuilder(scriptId: String, scriptDataVersion: String? = nil) -> RequestBuilder<Script> {
        var path = "/api/v2/scripts/published/{scriptId}"
        let scriptIdPreEscape = "\(scriptId)"
        let scriptIdPostEscape = scriptIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scriptId}", with: scriptIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "scriptDataVersion": scriptDataVersion
            
        ])

        let requestBuilder: RequestBuilder<Script>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    
    
    /**
     
     Get the published page.
     
     - parameter scriptId: (path) Script ID 
     - parameter pageId: (path) Page ID 
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScriptsPublishedScriptIdPage(scriptId: String, pageId: String, scriptDataVersion: String? = nil, completion: @escaping ((_ data: Page?,_ error: Error?) -> Void)) {
        let requestBuilder = getScriptsPublishedScriptIdPageWithRequestBuilder(scriptId: scriptId, pageId: pageId, scriptDataVersion: scriptDataVersion)
        requestBuilder.execute { (response: Response<Page>?, error) -> Void in
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
     
     Get the published page.
     
     - GET /api/v2/scripts/published/{scriptId}/pages/{pageId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "versionId" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+0000",
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "modifiedDate" : "2000-01-23T04:56:07.000+0000",
  "id" : "aeiou",
  "rootContainer" : {
    "key" : "{}"
  },
  "properties" : {
    "key" : "{}"
  }
}}]
     
     - parameter scriptId: (path) Script ID 
     - parameter pageId: (path) Page ID 
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)

     - returns: RequestBuilder<Page> 
     */
    open class func getScriptsPublishedScriptIdPageWithRequestBuilder(scriptId: String, pageId: String, scriptDataVersion: String? = nil) -> RequestBuilder<Page> {
        var path = "/api/v2/scripts/published/{scriptId}/pages/{pageId}"
        let scriptIdPreEscape = "\(scriptId)"
        let scriptIdPostEscape = scriptIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scriptId}", with: scriptIdPostEscape, options: .literal, range: nil)
        let pageIdPreEscape = "\(pageId)"
        let pageIdPostEscape = pageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{pageId}", with: pageIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "scriptDataVersion": scriptDataVersion
            
        ])

        let requestBuilder: RequestBuilder<Page>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Get the list of published pages
     
     - parameter scriptId: (path) Script ID 
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScriptsPublishedScriptIdPages(scriptId: String, scriptDataVersion: String? = nil, completion: @escaping ((_ data: [Page]?,_ error: Error?) -> Void)) {
        let requestBuilder = getScriptsPublishedScriptIdPagesWithRequestBuilder(scriptId: scriptId, scriptDataVersion: scriptDataVersion)
        requestBuilder.execute { (response: Response<[Page]>?, error) -> Void in
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
     
     Get the list of published pages
     
     - GET /api/v2/scripts/published/{scriptId}/pages
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example=[ {
  "versionId" : "aeiou",
  "createdDate" : "2000-01-23T04:56:07.000+0000",
  "selfUri" : "aeiou",
  "name" : "aeiou",
  "modifiedDate" : "2000-01-23T04:56:07.000+0000",
  "id" : "aeiou",
  "rootContainer" : {
    "key" : "{}"
  },
  "properties" : {
    "key" : "{}"
  }
} ]}]
     
     - parameter scriptId: (path) Script ID 
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)

     - returns: RequestBuilder<[Page]> 
     */
    open class func getScriptsPublishedScriptIdPagesWithRequestBuilder(scriptId: String, scriptDataVersion: String? = nil) -> RequestBuilder<[Page]> {
        var path = "/api/v2/scripts/published/{scriptId}/pages"
        let scriptIdPreEscape = "\(scriptId)"
        let scriptIdPostEscape = scriptIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scriptId}", with: scriptIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "scriptDataVersion": scriptDataVersion
            
        ])

        let requestBuilder: RequestBuilder<[Page]>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    
    
    
    
    
    
    /**
     
     Get the published variables
     
     - parameter scriptId: (path) Script ID 
     - parameter input: (query) input (optional)
     - parameter output: (query) output (optional)
     - parameter type: (query) type (optional)
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScriptsPublishedScriptIdVariables(scriptId: String, input: String? = nil, output: String? = nil, type: String? = nil, scriptDataVersion: String? = nil, completion: @escaping ((_ data: JSON?,_ error: Error?) -> Void)) {
        let requestBuilder = getScriptsPublishedScriptIdVariablesWithRequestBuilder(scriptId: scriptId, input: input, output: output, type: type, scriptDataVersion: scriptDataVersion)
        requestBuilder.execute { (response: Response<JSON>?, error) -> Void in
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
     
     Get the published variables
     
     - GET /api/v2/scripts/published/{scriptId}/variables
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example="{}"}]
     
     - parameter scriptId: (path) Script ID 
     - parameter input: (query) input (optional)
     - parameter output: (query) output (optional)
     - parameter type: (query) type (optional)
     - parameter scriptDataVersion: (query) Advanced usage - controls the data version of the script (optional)

     - returns: RequestBuilder<JSON> 
     */
    open class func getScriptsPublishedScriptIdVariablesWithRequestBuilder(scriptId: String, input: String? = nil, output: String? = nil, type: String? = nil, scriptDataVersion: String? = nil) -> RequestBuilder<JSON> {
        var path = "/api/v2/scripts/published/{scriptId}/variables"
        let scriptIdPreEscape = "\(scriptId)"
        let scriptIdPostEscape = scriptIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scriptId}", with: scriptIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "input": input, 
            
            "output": output, 
            
            "type": type, 
            
            "scriptDataVersion": scriptDataVersion
            
        ])

        let requestBuilder: RequestBuilder<JSON>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Get the upload status of an imported script
     
     - parameter uploadId: (path) Upload ID 
     - parameter longPoll: (query) Enable longPolling endpoint (optional, default to false)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScriptsUploadStatus(uploadId: String, longPoll: Bool? = nil, completion: @escaping ((_ data: ImportScriptStatusResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = getScriptsUploadStatusWithRequestBuilder(uploadId: uploadId, longPoll: longPoll)
        requestBuilder.execute { (response: Response<ImportScriptStatusResponse>?, error) -> Void in
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
     
     Get the upload status of an imported script
     
     - GET /api/v2/scripts/uploads/{uploadId}/status
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "message" : "aeiou",
  "url" : "aeiou",
  "succeeded" : true
}}]
     
     - parameter uploadId: (path) Upload ID 
     - parameter longPoll: (query) Enable longPolling endpoint (optional, default to false)

     - returns: RequestBuilder<ImportScriptStatusResponse> 
     */
    open class func getScriptsUploadStatusWithRequestBuilder(uploadId: String, longPoll: Bool? = nil) -> RequestBuilder<ImportScriptStatusResponse> {
        var path = "/api/v2/scripts/uploads/{uploadId}/status"
        let uploadIdPreEscape = "\(uploadId)"
        let uploadIdPostEscape = uploadIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{uploadId}", with: uploadIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "longPoll": longPoll
            
        ])

        let requestBuilder: RequestBuilder<ImportScriptStatusResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Export a script via download service.
     
     - parameter scriptId: (path) Script ID 
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postScriptExport(scriptId: String, body: ExportScriptRequest? = nil, completion: @escaping ((_ data: ExportScriptResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = postScriptExportWithRequestBuilder(scriptId: scriptId, body: body)
        requestBuilder.execute { (response: Response<ExportScriptResponse>?, error) -> Void in
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
     
     Export a script via download service.
     
     - POST /api/v2/scripts/{scriptId}/export
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "url" : "aeiou"
}}]
     
     - parameter scriptId: (path) Script ID 
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ExportScriptResponse> 
     */
    open class func postScriptExportWithRequestBuilder(scriptId: String, body: ExportScriptRequest? = nil) -> RequestBuilder<ExportScriptResponse> {
        var path = "/api/v2/scripts/{scriptId}/export"
        let scriptIdPreEscape = "\(scriptId)"
        let scriptIdPostEscape = scriptIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scriptId}", with: scriptIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ExportScriptResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

}
