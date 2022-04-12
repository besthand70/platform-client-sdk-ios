//
// Dependency.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class Dependency: Codable {

    public enum ModelType: String, Codable { 
        case acdlanguage = "ACDLANGUAGE"
        case acdskill = "ACDSKILL"
        case acdwrapupcode = "ACDWRAPUPCODE"
        case botconnectorbot = "BOTCONNECTORBOT"
        case botconnectorintegration = "BOTCONNECTORINTEGRATION"
        case botflow = "BOTFLOW"
        case bridgeaction = "BRIDGEACTION"
        case commonmoduleflow = "COMMONMODULEFLOW"
        case composerscript = "COMPOSERSCRIPT"
        case contactlist = "CONTACTLIST"
        case dataaction = "DATAACTION"
        case datatable = "DATATABLE"
        case dialogenginebot = "DIALOGENGINEBOT"
        case dialogenginebotversion = "DIALOGENGINEBOTVERSION"
        case dialogflowagent = "DIALOGFLOWAGENT"
        case dialogflowcxagent = "DIALOGFLOWCXAGENT"
        case digitalbotflow = "DIGITALBOTFLOW"
        case emailroute = "EMAILROUTE"
        case emergencygroup = "EMERGENCYGROUP"
        case flowaction = "FLOWACTION"
        case flowdatatype = "FLOWDATATYPE"
        case flowmilestone = "FLOWMILESTONE"
        case flowoutcome = "FLOWOUTCOME"
        case group = "GROUP"
        case inboundcallflow = "INBOUNDCALLFLOW"
        case inboundchatflow = "INBOUNDCHATFLOW"
        case inboundemailflow = "INBOUNDEMAILFLOW"
        case inboundshortmessageflow = "INBOUNDSHORTMESSAGEFLOW"
        case inqueuecallflow = "INQUEUECALLFLOW"
        case inqueueemailflow = "INQUEUEEMAILFLOW"
        case inqueueshortmessageflow = "INQUEUESHORTMESSAGEFLOW"
        case ivrconfiguration = "IVRCONFIGURATION"
        case knowledgebase = "KNOWLEDGEBASE"
        case knowledgebasedocument = "KNOWLEDGEBASEDOCUMENT"
        case language = "LANGUAGE"
        case lexbot = "LEXBOT"
        case lexbotalias = "LEXBOTALIAS"
        case lexv2bot = "LEXV2BOT"
        case lexv2botalias = "LEXV2BOTALIAS"
        case nludomain = "NLUDOMAIN"
        case nuancemixbot = "NUANCEMIXBOT"
        case nuancemixintegration = "NUANCEMIXINTEGRATION"
        case oauthclient = "OAUTHCLIENT"
        case outboundcallflow = "OUTBOUNDCALLFLOW"
        case queue = "QUEUE"
        case recordingpolicy = "RECORDINGPOLICY"
        case response = "RESPONSE"
        case schedule = "SCHEDULE"
        case schedulegroup = "SCHEDULEGROUP"
        case secureaction = "SECUREACTION"
        case securecallflow = "SECURECALLFLOW"
        case surveyinviteflow = "SURVEYINVITEFLOW"
        case systemprompt = "SYSTEMPROMPT"
        case ttsengine = "TTSENGINE"
        case ttsvoice = "TTSVOICE"
        case user = "USER"
        case userprompt = "USERPROMPT"
        case voiceflow = "VOICEFLOW"
        case voicemailflow = "VOICEMAILFLOW"
        case widget = "WIDGET"
        case workflow = "WORKFLOW"
        case workitemflow = "WORKITEMFLOW"
    }
    /** The dependency identifier */
    public var _id: String?
    public var name: String?
    public var version: String?
    public var type: ModelType?
    public var deleted: Bool?
    public var updated: Bool?
    public var stateUnknown: Bool?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, version: String?, type: ModelType?, deleted: Bool?, updated: Bool?, stateUnknown: Bool?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.version = version
        
        self.type = type
        
        self.deleted = deleted
        
        self.updated = updated
        
        self.stateUnknown = stateUnknown
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case version
        case type
        case deleted
        case updated
        case stateUnknown
        case selfUri
    }


}

