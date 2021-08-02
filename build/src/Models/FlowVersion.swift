//
// FlowVersion.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class FlowVersion: Codable {

    public enum ModelType: String, Codable { 
        case publish = "PUBLISH"
        case checkin = "CHECKIN"
        case save = "SAVE"
    }
    public enum CompatibleFlowTypes: String, Codable { 
        case bot = "BOT"
        case commonmodule = "COMMONMODULE"
        case inboundcall = "INBOUNDCALL"
        case inboundchat = "INBOUNDCHAT"
        case inboundemail = "INBOUNDEMAIL"
        case inboundshortmessage = "INBOUNDSHORTMESSAGE"
        case inqueuecall = "INQUEUECALL"
        case inqueueemail = "INQUEUEEMAIL"
        case inqueueshortmessage = "INQUEUESHORTMESSAGE"
        case outboundcall = "OUTBOUNDCALL"
        case securecall = "SECURECALL"
        case speech = "SPEECH"
        case surveyinvite = "SURVEYINVITE"
        case voicemail = "VOICEMAIL"
        case workflow = "WORKFLOW"
        case workitem = "WORKITEM"
    }
    /** The flow version identifier */
    public var _id: String?
    public var name: String?
    public var commitVersion: String?
    public var configurationVersion: String?
    public var type: ModelType?
    public var secure: Bool?
    public var debug: Bool?
    public var createdBy: User?
    public var createdByClient: DomainEntityRef?
    public var configurationUri: String?
    public var dateCreated: Int64?
    public var generationId: String?
    public var publishResultUri: String?
    public var inputSchema: JsonSchemaDocument?
    public var outputSchema: JsonSchemaDocument?
    /** Information about the natural language understanding configuration for the flow version */
    public var nluInfo: NluInfo?
    /** List of supported languages for this version of the flow */
    public var supportedLanguages: [SupportedLanguage]?
    /** Compatible flow types designate which flow types are allowed to embed a flow’s configuration within their own flow configuration.  Currently the only flows that can be embedded are Common Module flows and the embedding flow can invoke them using the Call Common Module action. */
    public var compatibleFlowTypes: [CompatibleFlowTypes]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, commitVersion: String?, configurationVersion: String?, type: ModelType?, secure: Bool?, debug: Bool?, createdBy: User?, createdByClient: DomainEntityRef?, configurationUri: String?, dateCreated: Int64?, generationId: String?, publishResultUri: String?, inputSchema: JsonSchemaDocument?, outputSchema: JsonSchemaDocument?, nluInfo: NluInfo?, supportedLanguages: [SupportedLanguage]?, compatibleFlowTypes: [CompatibleFlowTypes]?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.commitVersion = commitVersion
        
        self.configurationVersion = configurationVersion
        
        self.type = type
        
        self.secure = secure
        
        self.debug = debug
        
        self.createdBy = createdBy
        
        self.createdByClient = createdByClient
        
        self.configurationUri = configurationUri
        
        self.dateCreated = dateCreated
        
        self.generationId = generationId
        
        self.publishResultUri = publishResultUri
        
        self.inputSchema = inputSchema
        
        self.outputSchema = outputSchema
        
        self.nluInfo = nluInfo
        
        self.supportedLanguages = supportedLanguages
        
        self.compatibleFlowTypes = compatibleFlowTypes
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case commitVersion
        case configurationVersion
        case type
        case secure
        case debug
        case createdBy
        case createdByClient
        case configurationUri
        case dateCreated
        case generationId
        case publishResultUri
        case inputSchema
        case outputSchema
        case nluInfo
        case supportedLanguages
        case compatibleFlowTypes
        case selfUri
    }


}

