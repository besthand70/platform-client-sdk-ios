//
// ViewFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ViewFilter: Codable {

    public enum MediaTypes: String, Codable { 
        case voice = "voice"
        case chat = "chat"
        case email = "email"
        case callback = "callback"
        case cobrowse = "cobrowse"
        case video = "video"
        case screenshare = "screenshare"
        case message = "message"
    }
    public enum Directions: String, Codable { 
        case inbound = "inbound"
        case outbound = "outbound"
    }
    public enum OriginatingDirections: String, Codable { 
        case inbound = "inbound"
        case outbound = "outbound"
    }
    public enum MessageTypes: String, Codable { 
        case sms = "sms"
        case twitter = "twitter"
        case line = "line"
        case facebook = "facebook"
        case whatsapp = "whatsapp"
    }
    public enum AgentDurationSortOrder: String, Codable { 
        case ascending = "ascending"
        case descending = "descending"
    }
    public enum WaitingDurationSortOrder: String, Codable { 
        case ascending = "ascending"
        case descending = "descending"
    }
    public enum InteractingDurationSortOrder: String, Codable { 
        case ascending = "ascending"
        case descending = "descending"
    }
    public enum FlowOutcomeValues: String, Codable { 
        case success = "SUCCESS"
        case failure = "FAILURE"
    }
    public enum FlowDestinationTypes: String, Codable { 
        case acd = "ACD"
        case user = "USER"
        case group = "GROUP"
        case number = "NUMBER"
        case flow = "FLOW"
        case secureFlow = "SECURE_FLOW"
        case acdVoicemail = "ACD_VOICEMAIL"
        case userVoicemail = "USER_VOICEMAIL"
        case groupVoicemail = "GROUP_VOICEMAIL"
        case returnToAgent = "RETURN_TO_AGENT"
    }
    public enum FlowDisconnectReasons: String, Codable { 
        case flowDisconnect = "FLOW_DISCONNECT"
        case flowErrorDisconnect = "FLOW_ERROR_DISCONNECT"
        case disconnect = "DISCONNECT"
    }
    public enum FlowTypes: String, Codable { 
        case commonmodule = "commonmodule"
        case inboundcall = "inboundcall"
        case inboundchat = "inboundchat"
        case inboundemail = "inboundemail"
        case inboundshortmessage = "inboundshortmessage"
        case inqueuecall = "inqueuecall"
        case outboundcall = "outboundcall"
        case securecall = "securecall"
        case surveyinvite = "surveyinvite"
    }
    public enum FlowEntryTypes: String, Codable { 
        case dnis = "dnis"
        case direct = "direct"
        case flow = "flow"
        case agent = "agent"
        case outbound = "outbound"
    }
    /** The media types are used to filter the view */
    public var mediaTypes: [MediaTypes]?
    /** The queue ids are used to filter the view */
    public var queueIds: [String]?
    /** The skill ids are used to filter the view */
    public var skillIds: [String]?
    /** The skill groups used to filter the view */
    public var skillGroups: [String]?
    /** The language ids are used to filter the view */
    public var languageIds: [String]?
    /** The language groups used to filter the view */
    public var languageGroups: [String]?
    /** The directions are used to filter the view */
    public var directions: [Directions]?
    /** The list of orginating directions used to filter the view */
    public var originatingDirections: [OriginatingDirections]?
    /** The wrap up codes are used to filter the view */
    public var wrapUpCodes: [String]?
    /** The dnis list is used to filter the view */
    public var dnisList: [String]?
    /** The list of session dnis used to filter the view */
    public var sessionDnisList: [String]?
    /** The user ids are used to fetch associated queues for the view */
    public var filterQueuesByUserIds: [String]?
    /** The queue ids are used to fetch associated users for the view */
    public var filterUsersByQueueIds: [String]?
    /** The user ids are used to filter the view */
    public var userIds: [String]?
    /** The address To values are used to filter the view */
    public var addressTos: [String]?
    /** The address from values are used to filter the view */
    public var addressFroms: [String]?
    /** The outbound campaign ids are used to filter the view */
    public var outboundCampaignIds: [String]?
    /** The outbound contact list ids are used to filter the view */
    public var outboundContactListIds: [String]?
    /** The contact ids are used to filter the view */
    public var contactIds: [String]?
    /** The ani list ids are used to filter the view */
    public var aniList: [String]?
    /** The durations in milliseconds used to filter the view */
    public var durationsMilliseconds: [NumericRange]?
    /** The evaluationScore is used to filter the view */
    public var evaluationScore: NumericRange?
    /** The evaluationCriticalScore is used to filter the view */
    public var evaluationCriticalScore: NumericRange?
    /** The evaluation form ids are used to filter the view */
    public var evaluationFormIds: [String]?
    /** The evaluated agent ids are used to filter the view */
    public var evaluatedAgentIds: [String]?
    /** The evaluator ids are used to filter the view */
    public var evaluatorIds: [String]?
    /** Indicates filtering for transfers */
    public var transferred: Bool?
    /** Indicates filtering for abandons */
    public var abandoned: Bool?
    /** The message media types used to filter the view */
    public var messageTypes: [MessageTypes]?
    /** The divison Ids used to filter the view */
    public var divisionIds: [String]?
    /** The survey form ids used to filter the view */
    public var surveyFormIds: [String]?
    /** The survey total score used to filter the view */
    public var surveyTotalScore: NumericRange?
    /** The survey NPS score used to filter the view */
    public var surveyNpsScore: NumericRange?
    /** Indicates if the Secondary Status should be shown */
    public var showSecondaryStatus: Bool?
    /** Provides the agent duration sort order */
    public var agentDurationSortOrder: AgentDurationSortOrder?
    /** Provides the waiting duration sort order */
    public var waitingDurationSortOrder: WaitingDurationSortOrder?
    /** Provides the interacting duration sort order */
    public var interactingDurationSortOrder: InteractingDurationSortOrder?
    /** Displays the Agent name as provided by the user */
    public var agentName: String?
    /** The list of skill strings as free form text */
    public var skillsList: [String]?
    /** The list of language strings as free form text */
    public var languageList: [String]?
    /** The desired range for mos values */
    public var mos: NumericRange?
    /** The survey question group score used to filter the view */
    public var surveyQuestionGroupScore: NumericRange?
    /** The survey promoter score used to filter the view */
    public var surveyPromoterScore: NumericRange?
    /** The list of survey form context ids used to filter the view */
    public var surveyFormContextIds: [String]?
    /** The list of conversation ids used to filter the view */
    public var conversationIds: [String]?
    /** The list of SIP call ids used to filter the view */
    public var sipCallIds: [String]?
    /** Indicates filtering for ended */
    public var isEnded: Bool?
    /** Indicates filtering for survey */
    public var isSurveyed: Bool?
    /** The list of survey score ranges used to filter the view */
    public var surveyScores: [NumericRange]?
    /** The list of promoter score ranges used to filter the view */
    public var promoterScores: [NumericRange]?
    /** Indicates filtering for campaign */
    public var isCampaign: Bool?
    /** The list of survey statuses used to filter the view */
    public var surveyStatuses: [String]?
    /** A grouping of conversation level filters */
    public var conversationProperties: ConversationProperties?
    /** Indicates filtering for blind transferred */
    public var isBlindTransferred: Bool?
    /** Indicates filtering for consulted */
    public var isConsulted: Bool?
    /** Indicates filtering for consult transferred */
    public var isConsultTransferred: Bool?
    /** The list of remote participants used to filter the view */
    public var remoteParticipants: [String]?
    /** A list of status for the configuration view */
    public var statusList: [String]?
    /** The list of flow Ids */
    public var flowIds: [String]?
    /** A list of outcome ids of the flow */
    public var flowOutcomeIds: [String]?
    /** A list of outcome values of the flow */
    public var flowOutcomeValues: [FlowOutcomeValues]?
    /** The list of destination types of the flow */
    public var flowDestinationTypes: [FlowDestinationTypes]?
    /** The list of reasons for the flow to disconnect */
    public var flowDisconnectReasons: [FlowDisconnectReasons]?
    /** A list of types of the flow */
    public var flowTypes: [FlowTypes]?
    /** A list of types of the flow entry */
    public var flowEntryTypes: [FlowEntryTypes]?
    /** A list of reasons of flow entry */
    public var flowEntryReasons: [String]?
    /** A list of versions of a flow */
    public var flowVersions: [String]?
    /** A list of directory group ids */
    public var groupIds: [String]?
    /** Indicates filtering for journey customer id */
    public var hasJourneyCustomerId: Bool?
    /** Indicates filtering for Journey action map id */
    public var hasJourneyActionMapId: Bool?
    /** Indicates filtering for Journey visit id */
    public var hasJourneyVisitId: Bool?
    /** A list of OAuth client IDs */
    public var oauthClientIds: [String]?
    /** A list of API operations (ex: [\&quot;GET /api/v2/users/{userId}/queues\&quot;]) */
    public var apiOperations: [String]?

    public init(mediaTypes: [MediaTypes]?, queueIds: [String]?, skillIds: [String]?, skillGroups: [String]?, languageIds: [String]?, languageGroups: [String]?, directions: [Directions]?, originatingDirections: [OriginatingDirections]?, wrapUpCodes: [String]?, dnisList: [String]?, sessionDnisList: [String]?, filterQueuesByUserIds: [String]?, filterUsersByQueueIds: [String]?, userIds: [String]?, addressTos: [String]?, addressFroms: [String]?, outboundCampaignIds: [String]?, outboundContactListIds: [String]?, contactIds: [String]?, aniList: [String]?, durationsMilliseconds: [NumericRange]?, evaluationScore: NumericRange?, evaluationCriticalScore: NumericRange?, evaluationFormIds: [String]?, evaluatedAgentIds: [String]?, evaluatorIds: [String]?, transferred: Bool?, abandoned: Bool?, messageTypes: [MessageTypes]?, divisionIds: [String]?, surveyFormIds: [String]?, surveyTotalScore: NumericRange?, surveyNpsScore: NumericRange?, showSecondaryStatus: Bool?, agentDurationSortOrder: AgentDurationSortOrder?, waitingDurationSortOrder: WaitingDurationSortOrder?, interactingDurationSortOrder: InteractingDurationSortOrder?, agentName: String?, skillsList: [String]?, languageList: [String]?, mos: NumericRange?, surveyQuestionGroupScore: NumericRange?, surveyPromoterScore: NumericRange?, surveyFormContextIds: [String]?, conversationIds: [String]?, sipCallIds: [String]?, isEnded: Bool?, isSurveyed: Bool?, surveyScores: [NumericRange]?, promoterScores: [NumericRange]?, isCampaign: Bool?, surveyStatuses: [String]?, conversationProperties: ConversationProperties?, isBlindTransferred: Bool?, isConsulted: Bool?, isConsultTransferred: Bool?, remoteParticipants: [String]?, statusList: [String]?, flowIds: [String]?, flowOutcomeIds: [String]?, flowOutcomeValues: [FlowOutcomeValues]?, flowDestinationTypes: [FlowDestinationTypes]?, flowDisconnectReasons: [FlowDisconnectReasons]?, flowTypes: [FlowTypes]?, flowEntryTypes: [FlowEntryTypes]?, flowEntryReasons: [String]?, flowVersions: [String]?, groupIds: [String]?, hasJourneyCustomerId: Bool?, hasJourneyActionMapId: Bool?, hasJourneyVisitId: Bool?, oauthClientIds: [String]?, apiOperations: [String]?) {
        
        self.mediaTypes = mediaTypes
        
        self.queueIds = queueIds
        
        self.skillIds = skillIds
        
        self.skillGroups = skillGroups
        
        self.languageIds = languageIds
        
        self.languageGroups = languageGroups
        
        self.directions = directions
        
        self.originatingDirections = originatingDirections
        
        self.wrapUpCodes = wrapUpCodes
        
        self.dnisList = dnisList
        
        self.sessionDnisList = sessionDnisList
        
        self.filterQueuesByUserIds = filterQueuesByUserIds
        
        self.filterUsersByQueueIds = filterUsersByQueueIds
        
        self.userIds = userIds
        
        self.addressTos = addressTos
        
        self.addressFroms = addressFroms
        
        self.outboundCampaignIds = outboundCampaignIds
        
        self.outboundContactListIds = outboundContactListIds
        
        self.contactIds = contactIds
        
        self.aniList = aniList
        
        self.durationsMilliseconds = durationsMilliseconds
        
        self.evaluationScore = evaluationScore
        
        self.evaluationCriticalScore = evaluationCriticalScore
        
        self.evaluationFormIds = evaluationFormIds
        
        self.evaluatedAgentIds = evaluatedAgentIds
        
        self.evaluatorIds = evaluatorIds
        
        self.transferred = transferred
        
        self.abandoned = abandoned
        
        self.messageTypes = messageTypes
        
        self.divisionIds = divisionIds
        
        self.surveyFormIds = surveyFormIds
        
        self.surveyTotalScore = surveyTotalScore
        
        self.surveyNpsScore = surveyNpsScore
        
        self.showSecondaryStatus = showSecondaryStatus
        
        self.agentDurationSortOrder = agentDurationSortOrder
        
        self.waitingDurationSortOrder = waitingDurationSortOrder
        
        self.interactingDurationSortOrder = interactingDurationSortOrder
        
        self.agentName = agentName
        
        self.skillsList = skillsList
        
        self.languageList = languageList
        
        self.mos = mos
        
        self.surveyQuestionGroupScore = surveyQuestionGroupScore
        
        self.surveyPromoterScore = surveyPromoterScore
        
        self.surveyFormContextIds = surveyFormContextIds
        
        self.conversationIds = conversationIds
        
        self.sipCallIds = sipCallIds
        
        self.isEnded = isEnded
        
        self.isSurveyed = isSurveyed
        
        self.surveyScores = surveyScores
        
        self.promoterScores = promoterScores
        
        self.isCampaign = isCampaign
        
        self.surveyStatuses = surveyStatuses
        
        self.conversationProperties = conversationProperties
        
        self.isBlindTransferred = isBlindTransferred
        
        self.isConsulted = isConsulted
        
        self.isConsultTransferred = isConsultTransferred
        
        self.remoteParticipants = remoteParticipants
        
        self.statusList = statusList
        
        self.flowIds = flowIds
        
        self.flowOutcomeIds = flowOutcomeIds
        
        self.flowOutcomeValues = flowOutcomeValues
        
        self.flowDestinationTypes = flowDestinationTypes
        
        self.flowDisconnectReasons = flowDisconnectReasons
        
        self.flowTypes = flowTypes
        
        self.flowEntryTypes = flowEntryTypes
        
        self.flowEntryReasons = flowEntryReasons
        
        self.flowVersions = flowVersions
        
        self.groupIds = groupIds
        
        self.hasJourneyCustomerId = hasJourneyCustomerId
        
        self.hasJourneyActionMapId = hasJourneyActionMapId
        
        self.hasJourneyVisitId = hasJourneyVisitId
        
        self.oauthClientIds = oauthClientIds
        
        self.apiOperations = apiOperations
        
    }


}

