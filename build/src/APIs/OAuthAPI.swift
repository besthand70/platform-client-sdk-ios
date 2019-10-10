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
    "roleDivisions" : [ {
      "roleId" : "aeiou",
      "divisionId" : "aeiou"
    } ]
  } ],
  "firstUri" : "aeiou",
  "selfUri" : "aeiou",
  "lastUri" : "aeiou",
  "pageSize" : 123,
  "previousUri" : "aeiou",
  "nextUri" : "aeiou"
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
