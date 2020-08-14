//
// OAuthAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class OAuthAPI {
    
    
    
    /**
     
     Delete OAuth Client
     
     - parameter clientId: (path) Client ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteOauthClient(clientId: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        let requestBuilder = deleteOauthClientWithRequestBuilder(clientId: clientId)
        requestBuilder.execute { (response: Response<Void>?, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     
     Delete OAuth Client
     
     - DELETE /api/v2/oauth/clients/{clientId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     
     - parameter clientId: (path) Client ID 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteOauthClientWithRequestBuilder(clientId: String) -> RequestBuilder<Void> {
        var path = "/api/v2/oauth/clients/{clientId}"
        let clientIdPreEscape = "\(clientId)"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", url: url!, body: body)
    }

    
    
    
    /**
     
     Get a client that is authorized by the resource owner
     
     - parameter clientId: (path) The ID of client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOauthAuthorization(clientId: String, completion: @escaping ((_ data: OAuthAuthorization?,_ error: Error?) -> Void)) {
        let requestBuilder = getOauthAuthorizationWithRequestBuilder(clientId: clientId)
        requestBuilder.execute { (response: Response<OAuthAuthorization>?, error) -> Void in
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
     
     Get a client that is authorized by the resource owner
     
     - GET /api/v2/oauth/authorizations/{clientId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "createdBy" : "",
  "resourceOwner" : "",
  "scope" : [ "aeiou" ],
  "pending" : true,
  "selfUri" : "aeiou",
  "client" : {
    "selfUri" : "aeiou",
    "registeredRedirectUri" : [ "aeiou" ],
    "description" : "aeiou",
    "dateModified" : "2000-01-23T04:56:07.000+0000",
    "secret" : "aeiou",
    "authorizedGrantType" : "aeiou",
    "roleIds" : [ "aeiou" ],
    "dateCreated" : "2000-01-23T04:56:07.000+0000",
    "createdBy" : {
      "selfUri" : "aeiou",
      "name" : "aeiou",
      "id" : "aeiou"
    },
    "accessTokenValiditySeconds" : 123456789,
    "scope" : [ "aeiou" ],
    "name" : "aeiou",
    "modifiedBy" : "",
    "id" : "aeiou",
    "state" : "aeiou",
    "roleDivisions" : [ {
      "roleId" : "aeiou",
      "divisionId" : "aeiou"
    } ]
  },
  "dateModified" : "2000-01-23T04:56:07.000+0000",
  "modifiedBy" : ""
}}]
     
     - parameter clientId: (path) The ID of client 

     - returns: RequestBuilder<OAuthAuthorization> 
     */
    open class func getOauthAuthorizationWithRequestBuilder(clientId: String) -> RequestBuilder<OAuthAuthorization> {
        var path = "/api/v2/oauth/authorizations/{clientId}"
        let clientIdPreEscape = "\(clientId)"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OAuthAuthorization>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     List clients that are authorized by the resource owner
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOauthAuthorizations(completion: @escaping ((_ data: OAuthAuthorizationListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getOauthAuthorizationsWithRequestBuilder()
        requestBuilder.execute { (response: Response<OAuthAuthorizationListing>?, error) -> Void in
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
     
     List clients that are authorized by the resource owner
     
     - GET /api/v2/oauth/authorizations
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "entities" : [ {
    "dateCreated" : "2000-01-23T04:56:07.000+0000",
    "createdBy" : "",
    "resourceOwner" : "",
    "scope" : [ "aeiou" ],
    "pending" : true,
    "selfUri" : "aeiou",
    "client" : {
      "selfUri" : "aeiou",
      "registeredRedirectUri" : [ "aeiou" ],
      "description" : "aeiou",
      "dateModified" : "2000-01-23T04:56:07.000+0000",
      "secret" : "aeiou",
      "authorizedGrantType" : "aeiou",
      "roleIds" : [ "aeiou" ],
      "dateCreated" : "2000-01-23T04:56:07.000+0000",
      "createdBy" : {
        "selfUri" : "aeiou",
        "name" : "aeiou",
        "id" : "aeiou"
      },
      "accessTokenValiditySeconds" : 123456789,
      "scope" : [ "aeiou" ],
      "name" : "aeiou",
      "modifiedBy" : "",
      "id" : "aeiou",
      "state" : "aeiou",
      "roleDivisions" : [ {
        "roleId" : "aeiou",
        "divisionId" : "aeiou"
      } ]
    },
    "dateModified" : "2000-01-23T04:56:07.000+0000",
    "modifiedBy" : ""
  } ],
  "selfUri" : "aeiou"
}}]

     - returns: RequestBuilder<OAuthAuthorizationListing> 
     */
    open class func getOauthAuthorizationsWithRequestBuilder() -> RequestBuilder<OAuthAuthorizationListing> {
        let path = "/api/v2/oauth/authorizations"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OAuthAuthorizationListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    /**
     
     Get OAuth Client
     
     - parameter clientId: (path) Client ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOauthClient(clientId: String, completion: @escaping ((_ data: OAuthClient?,_ error: Error?) -> Void)) {
        let requestBuilder = getOauthClientWithRequestBuilder(clientId: clientId)
        requestBuilder.execute { (response: Response<OAuthClient>?, error) -> Void in
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
     
     Get OAuth Client
     
     - GET /api/v2/oauth/clients/{clientId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "aeiou",
  "registeredRedirectUri" : [ "aeiou" ],
  "description" : "aeiou",
  "dateModified" : "2000-01-23T04:56:07.000+0000",
  "secret" : "aeiou",
  "authorizedGrantType" : "aeiou",
  "roleIds" : [ "aeiou" ],
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "createdBy" : {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "accessTokenValiditySeconds" : 123456789,
  "scope" : [ "aeiou" ],
  "name" : "aeiou",
  "modifiedBy" : "",
  "id" : "aeiou",
  "state" : "aeiou",
  "roleDivisions" : [ {
    "roleId" : "aeiou",
    "divisionId" : "aeiou"
  } ]
}}]
     
     - parameter clientId: (path) Client ID 

     - returns: RequestBuilder<OAuthClient> 
     */
    open class func getOauthClientWithRequestBuilder(clientId: String) -> RequestBuilder<OAuthClient> {
        var path = "/api/v2/oauth/clients/{clientId}"
        let clientIdPreEscape = "\(clientId)"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OAuthClient>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Get the results of a usage query
     
     - parameter executionId: (path) ID of the query execution 
     - parameter clientId: (path) Client ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOauthClientUsageQueryResult(executionId: String, clientId: String, completion: @escaping ((_ data: ApiUsageQueryResult?,_ error: Error?) -> Void)) {
        let requestBuilder = getOauthClientUsageQueryResultWithRequestBuilder(executionId: executionId, clientId: clientId)
        requestBuilder.execute { (response: Response<ApiUsageQueryResult>?, error) -> Void in
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
     
     Get the results of a usage query
     
     - GET /api/v2/oauth/clients/{clientId}/usage/query/results/{executionId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "queryStatus" : "aeiou",
  "results" : [ {
    "date" : "2000-01-23T04:56:07.000+0000",
    "clientId" : "aeiou",
    "clientName" : "aeiou",
    "templateUri" : "aeiou",
    "requests" : 123456789,
    "httpMethod" : "aeiou",
    "userId" : "aeiou",
    "organizationId" : "aeiou",
    "status429" : 123456789,
    "status400" : 123456789,
    "status500" : 123456789,
    "status200" : 123456789,
    "status300" : 123456789
  } ]
}}]
     
     - parameter executionId: (path) ID of the query execution 
     - parameter clientId: (path) Client ID 

     - returns: RequestBuilder<ApiUsageQueryResult> 
     */
    open class func getOauthClientUsageQueryResultWithRequestBuilder(executionId: String, clientId: String) -> RequestBuilder<ApiUsageQueryResult> {
        var path = "/api/v2/oauth/clients/{clientId}/usage/query/results/{executionId}"
        let executionIdPreEscape = "\(executionId)"
        let executionIdPostEscape = executionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{executionId}", with: executionIdPostEscape, options: .literal, range: nil)
        let clientIdPreEscape = "\(clientId)"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ApiUsageQueryResult>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Get a summary of OAuth client API usage
     
     - parameter clientId: (path) Client ID 
     - parameter days: (query) Previous number of days to query (optional, default to 7)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOauthClientUsageSummary(clientId: String, days: String? = nil, completion: @escaping ((_ data: UsageExecutionResult?,_ error: Error?) -> Void)) {
        let requestBuilder = getOauthClientUsageSummaryWithRequestBuilder(clientId: clientId, days: days)
        requestBuilder.execute { (response: Response<UsageExecutionResult>?, error) -> Void in
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
     
     Get a summary of OAuth client API usage
     
     - GET /api/v2/oauth/clients/{clientId}/usage/summary
     - After calling this method, you will then need to poll for the query results based on the returned execution Id
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "executionId" : "aeiou",
  "resultsUri" : "aeiou"
}}]
     
     - parameter clientId: (path) Client ID 
     - parameter days: (query) Previous number of days to query (optional, default to 7)

     - returns: RequestBuilder<UsageExecutionResult> 
     */
    open class func getOauthClientUsageSummaryWithRequestBuilder(clientId: String, days: String? = nil) -> RequestBuilder<UsageExecutionResult> {
        var path = "/api/v2/oauth/clients/{clientId}/usage/summary"
        let clientIdPreEscape = "\(clientId)"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "days": days
            
        ])

        let requestBuilder: RequestBuilder<UsageExecutionResult>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    /**
     
     The list of OAuth clients
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOauthClients(completion: @escaping ((_ data: OAuthClientEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getOauthClientsWithRequestBuilder()
        requestBuilder.execute { (response: Response<OAuthClientEntityListing>?, error) -> Void in
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
     
     The list of OAuth clients
     
     - GET /api/v2/oauth/clients
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "total" : 123456789,
  "pageCount" : 123,
  "pageNumber" : 123,
  "entities" : [ {
    "selfUri" : "aeiou",
    "registeredRedirectUri" : [ "aeiou" ],
    "description" : "aeiou",
    "dateModified" : "2000-01-23T04:56:07.000+0000",
    "secret" : "aeiou",
    "roleIds" : [ "aeiou" ],
    "dateCreated" : "2000-01-23T04:56:07.000+0000",
    "createdBy" : {
      "selfUri" : "aeiou",
      "name" : "aeiou",
      "id" : "aeiou"
    },
    "accessTokenValiditySeconds" : 123456789,
    "scope" : [ "aeiou" ],
    "name" : "aeiou",
    "modifiedBy" : "",
    "id" : "aeiou",
    "state" : "aeiou",
    "roleDivisions" : [ {
      "roleId" : "aeiou",
      "divisionId" : "aeiou"
    } ]
  } ],
  "firstUri" : "aeiou",
  "selfUri" : "aeiou",
  "lastUri" : "aeiou",
  "pageSize" : 123,
  "nextUri" : "aeiou",
  "previousUri" : "aeiou"
}}]

     - returns: RequestBuilder<OAuthClientEntityListing> 
     */
    open class func getOauthClientsWithRequestBuilder() -> RequestBuilder<OAuthClientEntityListing> {
        let path = "/api/v2/oauth/clients"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OAuthClientEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     An OAuth scope
     
     - parameter scopeId: (path) Scope ID 
     - parameter acceptLanguage: (header) The language with which to display the scope description. (optional, default to en-us)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOauthScope(scopeId: String, acceptLanguage: String? = nil, completion: @escaping ((_ data: OAuthScope?,_ error: Error?) -> Void)) {
        let requestBuilder = getOauthScopeWithRequestBuilder(scopeId: scopeId, acceptLanguage: acceptLanguage)
        requestBuilder.execute { (response: Response<OAuthScope>?, error) -> Void in
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
     
     An OAuth scope
     
     - GET /api/v2/oauth/scopes/{scopeId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "aeiou",
  "description" : "aeiou",
  "id" : "aeiou"
}}]
     
     - parameter scopeId: (path) Scope ID 
     - parameter acceptLanguage: (header) The language with which to display the scope description. (optional, default to en-us)

     - returns: RequestBuilder<OAuthScope> 
     */
    open class func getOauthScopeWithRequestBuilder(scopeId: String, acceptLanguage: String? = nil) -> RequestBuilder<OAuthScope> {
        var path = "/api/v2/oauth/scopes/{scopeId}"
        let scopeIdPreEscape = "\(scopeId)"
        let scopeIdPostEscape = scopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{scopeId}", with: scopeIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Accept-Language": acceptLanguage
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<OAuthScope>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body, headers: headerParameters)
    }

    
    
    
    /**
     
     The list of OAuth scopes
     
     - parameter acceptLanguage: (header) The language with which to display the scope descriptions. (optional, default to en-us)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOauthScopes(acceptLanguage: String? = nil, completion: @escaping ((_ data: OAuthScopeListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getOauthScopesWithRequestBuilder(acceptLanguage: acceptLanguage)
        requestBuilder.execute { (response: Response<OAuthScopeListing>?, error) -> Void in
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
     
     The list of OAuth scopes
     
     - GET /api/v2/oauth/scopes
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "entities" : [ {
    "selfUri" : "aeiou",
    "description" : "aeiou",
    "id" : "aeiou"
  } ],
  "selfUri" : "aeiou"
}}]
     
     - parameter acceptLanguage: (header) The language with which to display the scope descriptions. (optional, default to en-us)

     - returns: RequestBuilder<OAuthScopeListing> 
     */
    open class func getOauthScopesWithRequestBuilder(acceptLanguage: String? = nil) -> RequestBuilder<OAuthScopeListing> {
        let path = "/api/v2/oauth/scopes"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Accept-Language": acceptLanguage
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<OAuthScopeListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body, headers: headerParameters)
    }

    
    
    
    /**
     
     Regenerate Client Secret
     
     - parameter clientId: (path) Client ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postOauthClientSecret(clientId: String, completion: @escaping ((_ data: OAuthClient?,_ error: Error?) -> Void)) {
        let requestBuilder = postOauthClientSecretWithRequestBuilder(clientId: clientId)
        requestBuilder.execute { (response: Response<OAuthClient>?, error) -> Void in
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
     
     Regenerate Client Secret
     
     - POST /api/v2/oauth/clients/{clientId}/secret
     - This operation will set the client secret to a randomly generated cryptographically random value. All clients must be updated with the new secret. This operation should be used with caution.
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "aeiou",
  "registeredRedirectUri" : [ "aeiou" ],
  "description" : "aeiou",
  "dateModified" : "2000-01-23T04:56:07.000+0000",
  "secret" : "aeiou",
  "authorizedGrantType" : "aeiou",
  "roleIds" : [ "aeiou" ],
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "createdBy" : {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "accessTokenValiditySeconds" : 123456789,
  "scope" : [ "aeiou" ],
  "name" : "aeiou",
  "modifiedBy" : "",
  "id" : "aeiou",
  "state" : "aeiou",
  "roleDivisions" : [ {
    "roleId" : "aeiou",
    "divisionId" : "aeiou"
  } ]
}}]
     
     - parameter clientId: (path) Client ID 

     - returns: RequestBuilder<OAuthClient> 
     */
    open class func postOauthClientSecretWithRequestBuilder(clientId: String) -> RequestBuilder<OAuthClient> {
        var path = "/api/v2/oauth/clients/{clientId}/secret"
        let clientIdPreEscape = "\(clientId)"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OAuthClient>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Query for OAuth client API usage
     
     - parameter clientId: (path) Client ID 
     - parameter body: (body) Query 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postOauthClientUsageQuery(clientId: String, body: ApiUsageQuery, completion: @escaping ((_ data: UsageExecutionResult?,_ error: Error?) -> Void)) {
        let requestBuilder = postOauthClientUsageQueryWithRequestBuilder(clientId: clientId, body: body)
        requestBuilder.execute { (response: Response<UsageExecutionResult>?, error) -> Void in
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
     
     Query for OAuth client API usage
     
     - POST /api/v2/oauth/clients/{clientId}/usage/query
     - After calling this method, you will then need to poll for the query results based on the returned execution Id
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "executionId" : "aeiou",
  "resultsUri" : "aeiou"
}}]
     
     - parameter clientId: (path) Client ID 
     - parameter body: (body) Query 

     - returns: RequestBuilder<UsageExecutionResult> 
     */
    open class func postOauthClientUsageQueryWithRequestBuilder(clientId: String, body: ApiUsageQuery) -> RequestBuilder<UsageExecutionResult> {
        var path = "/api/v2/oauth/clients/{clientId}/usage/query"
        let clientIdPreEscape = "\(clientId)"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<UsageExecutionResult>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    
    
    /**
     
     Create OAuth client
     
     - parameter body: (body) Client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postOauthClients(body: OAuthClientRequest, completion: @escaping ((_ data: OAuthClient?,_ error: Error?) -> Void)) {
        let requestBuilder = postOauthClientsWithRequestBuilder(body: body)
        requestBuilder.execute { (response: Response<OAuthClient>?, error) -> Void in
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
     
     Create OAuth client
     
     - POST /api/v2/oauth/clients
     - The OAuth Grant/Client is required in order to create an authentication token and gain access to PureCloud.  The preferred authorizedGrantTypes is 'CODE' which requires applications to send a client ID and client secret. This is typically a web server.  If the client is unable to secure the client secret then the 'TOKEN' grant type aka IMPLICIT should be used. This is would be for browser or mobile apps.  If a client is to be used outside of the context of a user then the 'CLIENT-CREDENTIALS' grant may be used. In this case the client must be granted roles  via the 'roleIds' field.
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "aeiou",
  "registeredRedirectUri" : [ "aeiou" ],
  "description" : "aeiou",
  "dateModified" : "2000-01-23T04:56:07.000+0000",
  "secret" : "aeiou",
  "authorizedGrantType" : "aeiou",
  "roleIds" : [ "aeiou" ],
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "createdBy" : {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "accessTokenValiditySeconds" : 123456789,
  "scope" : [ "aeiou" ],
  "name" : "aeiou",
  "modifiedBy" : "",
  "id" : "aeiou",
  "state" : "aeiou",
  "roleDivisions" : [ {
    "roleId" : "aeiou",
    "divisionId" : "aeiou"
  } ]
}}]
     
     - parameter body: (body) Client 

     - returns: RequestBuilder<OAuthClient> 
     */
    open class func postOauthClientsWithRequestBuilder(body: OAuthClientRequest) -> RequestBuilder<OAuthClient> {
        let path = "/api/v2/oauth/clients"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OAuthClient>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Update OAuth Client
     
     - parameter clientId: (path) Client ID 
     - parameter body: (body) Client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putOauthClient(clientId: String, body: OAuthClientRequest, completion: @escaping ((_ data: OAuthClient?,_ error: Error?) -> Void)) {
        let requestBuilder = putOauthClientWithRequestBuilder(clientId: clientId, body: body)
        requestBuilder.execute { (response: Response<OAuthClient>?, error) -> Void in
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
     
     Update OAuth Client
     
     - PUT /api/v2/oauth/clients/{clientId}
     - 
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "selfUri" : "aeiou",
  "registeredRedirectUri" : [ "aeiou" ],
  "description" : "aeiou",
  "dateModified" : "2000-01-23T04:56:07.000+0000",
  "secret" : "aeiou",
  "authorizedGrantType" : "aeiou",
  "roleIds" : [ "aeiou" ],
  "dateCreated" : "2000-01-23T04:56:07.000+0000",
  "createdBy" : {
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "id" : "aeiou"
  },
  "accessTokenValiditySeconds" : 123456789,
  "scope" : [ "aeiou" ],
  "name" : "aeiou",
  "modifiedBy" : "",
  "id" : "aeiou",
  "state" : "aeiou",
  "roleDivisions" : [ {
    "roleId" : "aeiou",
    "divisionId" : "aeiou"
  } ]
}}]
     
     - parameter clientId: (path) Client ID 
     - parameter body: (body) Client 

     - returns: RequestBuilder<OAuthClient> 
     */
    open class func putOauthClientWithRequestBuilder(clientId: String, body: OAuthClientRequest) -> RequestBuilder<OAuthClient> {
        var path = "/api/v2/oauth/clients/{clientId}"
        let clientIdPreEscape = "\(clientId)"
        let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OAuthClient>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", url: url!, body: body)
    }

}
