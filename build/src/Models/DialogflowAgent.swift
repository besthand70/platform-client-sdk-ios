//
// DialogflowAgent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DialogflowAgent: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** The project this Dialogflow agent belongs to */
    public var project: DialogflowProject?
    /** The supported languages of the Dialogflow agent */
    public var languages: [String]?
    /** An array of Intents associated with this agent */
    public var intents: [DialogflowIntent]?
    /** Available environments for this agent */
    public var environments: [String]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, project: DialogflowProject?, languages: [String]?, intents: [DialogflowIntent]?, environments: [String]?, selfUri: String?) {
        self._id = _id
        self.name = name
        self.project = project
        self.languages = languages
        self.intents = intents
        self.environments = environments
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case project
        case languages
        case intents
        case environments
        case selfUri
    }


}

