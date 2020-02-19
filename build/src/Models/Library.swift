//
// Library.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class Library: Codable {

    public enum ResponseType: String, Codable { 
        case messagingTemplate = "MessagingTemplate"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The library name. */
    public var name: String?
    /** Current version for this resource. */
    public var version: Int?
    /** User that created the library. */
    public var createdBy: User?
    /** The date and time the response was created. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var dateCreated: Date?
    /** The response type for the library. If set, only response&#39;s of this type may be added to this library. */
    public var responseType: ResponseType?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, version: Int?, createdBy: User?, dateCreated: Date?, responseType: ResponseType?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.version = version
        
        self.createdBy = createdBy
        
        self.dateCreated = dateCreated
        
        self.responseType = responseType
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case version
        case createdBy
        case dateCreated
        case responseType
        case selfUri
    }


}

