//
// FacebookIntegrationRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class FacebookIntegrationRequest: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The name of the Facebook Integration */
    public var name: String?
    /** The long-lived Page Access Token of a facebook page.  See https://developers.facebook.com/docs/facebook-login/access-tokens.  When a pageAccessToken is provided, pageId and userAccessToken are not required. */
    public var pageAccessToken: String?
    /** The short-lived User Access Token of the facebook user logged into the facebook app.  See https://developers.facebook.com/docs/facebook-login/access-tokens.  When userAccessToken is provided, pageId is mandatory.  When userAccessToken/pageId combination is provided, pageAccessToken is not required. */
    public var userAccessToken: String?
    /** The page Id of a facebook page. The pageId is required when userAccessToken is provided. */
    public var pageId: String?
    /** The app Id of a facebook app */
    public var appId: String?
    /** The app Secret of a facebook app */
    public var appSecret: String?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, pageAccessToken: String?, userAccessToken: String?, pageId: String?, appId: String?, appSecret: String?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.pageAccessToken = pageAccessToken
        
        self.userAccessToken = userAccessToken
        
        self.pageId = pageId
        
        self.appId = appId
        
        self.appSecret = appSecret
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case pageAccessToken
        case userAccessToken
        case pageId
        case appId
        case appSecret
        case selfUri
    }


}

