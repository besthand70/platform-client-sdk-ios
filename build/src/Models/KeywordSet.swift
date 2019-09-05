//
// KeywordSet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class KeywordSet: Codable {

    public enum ParticipantPurposes: String, Codable { 
        case agent = "AGENT"
        case customer = "CUSTOMER"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    public var _description: String?
    public var queues: [Queue]?
    /** Language code, such as &#39;en-US&#39; */
    public var language: String?
    public var agents: [User]?
    /** The list of keywords to be used for keyword spotting. */
    public var keywords: [Keyword]?
    /** The types of participants to use keyword spotting on. */
    public var participantPurposes: [ParticipantPurposes]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, _description: String?, queues: [Queue]?, language: String?, agents: [User]?, keywords: [Keyword]?, participantPurposes: [ParticipantPurposes]?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self._description = _description
        
        self.queues = queues
        
        self.language = language
        
        self.agents = agents
        
        self.keywords = keywords
        
        self.participantPurposes = participantPurposes
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case _description = "description"
        case queues
        case language
        case agents
        case keywords
        case participantPurposes
        case selfUri
    }


}

