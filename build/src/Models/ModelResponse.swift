//
// ModelResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains information about a response. */

public class ModelResponse: Codable {

    public enum InteractionType: String, Codable { 
        case chat = "chat"
        case email = "email"
        case twitter = "twitter"
    }
    public enum ResponseType: String, Codable { 
        case messagingTemplate = "MessagingTemplate"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** Version number required for updates. */
    public var version: Int?
    /** One or more libraries response is associated with. */
    public var libraries: [DomainEntityRef]?
    /** One or more texts associated with the response. */
    public var texts: [ResponseText]?
    /** User that created the response */
    public var createdBy: User?
    /** The date and time the response was created. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var dateCreated: Date?
    /** The interaction type for this response. */
    public var interactionType: InteractionType?
    /** Details about any text substitutions used in the texts for this response. */
    public var substitutions: [ResponseSubstitution]?
    /** Metadata about the text substitutions in json schema format. */
    public var substitutionsSchema: JsonSchemaDocument?
    /** The response type represented by the response */
    public var responseType: ResponseType?
    /** The messaging template definition. This is required when adding to a library with responseType set to MessagingTemplate. */
    public var messagingTemplate: MessagingTemplate?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, version: Int?, libraries: [DomainEntityRef]?, texts: [ResponseText]?, createdBy: User?, dateCreated: Date?, interactionType: InteractionType?, substitutions: [ResponseSubstitution]?, substitutionsSchema: JsonSchemaDocument?, responseType: ResponseType?, messagingTemplate: MessagingTemplate?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.version = version
        
        self.libraries = libraries
        
        self.texts = texts
        
        self.createdBy = createdBy
        
        self.dateCreated = dateCreated
        
        self.interactionType = interactionType
        
        self.substitutions = substitutions
        
        self.substitutionsSchema = substitutionsSchema
        
        self.responseType = responseType
        
        self.messagingTemplate = messagingTemplate
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case version
        case libraries
        case texts
        case createdBy
        case dateCreated
        case interactionType
        case substitutions
        case substitutionsSchema
        case responseType
        case messagingTemplate
        case selfUri
    }


}

