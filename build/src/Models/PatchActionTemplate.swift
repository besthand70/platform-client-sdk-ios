//
// PatchActionTemplate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PatchActionTemplate: Codable {

    public enum MediaType: String, Codable { 
        case webchat = "webchat"
        case webmessagingoffer = "webMessagingOffer"
        case contentoffer = "contentOffer"
        case integrationaction = "integrationAction"
        case architectflow = "architectFlow"
    }
    public enum State: String, Codable { 
        case active = "Active"
        case inactive = "Inactive"
        case deleted = "Deleted"
    }
    /** Name of the action template. */
    public var name: String?
    /** Description of the action template&#39;s functionality. */
    public var _description: String?
    /** Media type of action described by the action template. */
    public var mediaType: MediaType?
    /** Whether the action template is currently active, inactive or deleted. */
    public var state: State?
    /** Properties used to configure an action of type content offer */
    public var contentOffer: PatchContentOffer?

    public init(name: String?, _description: String?, mediaType: MediaType?, state: State?, contentOffer: PatchContentOffer?) {
        
        self.name = name
        
        self._description = _description
        
        self.mediaType = mediaType
        
        self.state = state
        
        self.contentOffer = contentOffer
        
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case _description = "description"
        case mediaType
        case state
        case contentOffer
    }


}

