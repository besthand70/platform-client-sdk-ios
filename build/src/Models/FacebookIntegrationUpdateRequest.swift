//
// FacebookIntegrationUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class FacebookIntegrationUpdateRequest: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The name of the Facebook Integration */
    public var name: String?
    /** The long-lived Page Access Token of Facebook page.  See https://developers.facebook.com/docs/facebook-login/access-tokens.  Either pageAccessToken or userAccessToken should be provided. */
    public var pageAccessToken: String?
    /** The short-lived User Access Token of the Facebook user logged into the Facebook app.  See https://developers.facebook.com/docs/facebook-login/access-tokens.  Either pageAccessToken or userAccessToken should be provided. */
    public var userAccessToken: String?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, pageAccessToken: String?, userAccessToken: String?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.pageAccessToken = pageAccessToken
        
        self.userAccessToken = userAccessToken
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case pageAccessToken
        case userAccessToken
        case selfUri
    }


}

