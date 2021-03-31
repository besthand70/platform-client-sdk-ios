//
// FlowAggregateQueryPredicate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class FlowAggregateQueryPredicate: Codable {

    public enum ModelType: String, Codable { 
        case dimension = "dimension"
        case property = "property"
        case metric = "metric"
    }
    public enum Dimension: String, Codable { 
        case activeskillid = "activeSkillId"
        case addressfrom = "addressFrom"
        case addressto = "addressTo"
        case agentassistantid = "agentAssistantId"
        case agentbullseyering = "agentBullseyeRing"
        case agentrank = "agentRank"
        case agentscore = "agentScore"
        case ani = "ani"
        case assignerid = "assignerId"
        case bullseyering = "bullseyeRing"
        case conversationid = "conversationId"
        case convertedfrom = "convertedFrom"
        case convertedto = "convertedTo"
        case direction = "direction"
        case disconnecttype = "disconnectType"
        case divisionid = "divisionId"
        case dnis = "dnis"
        case edgeid = "edgeId"
        case endinglanguage = "endingLanguage"
        case entryreason = "entryReason"
        case entrytype = "entryType"
        case exitreason = "exitReason"
        case externalcontactid = "externalContactId"
        case externalmediacount = "externalMediaCount"
        case externalorganizationid = "externalOrganizationId"
        case firstqueue = "firstQueue"
        case flaggedreason = "flaggedReason"
        case flowid = "flowId"
        case flowintype = "flowInType"
        case flowmilestoneid = "flowMilestoneId"
        case flowname = "flowName"
        case flowouttype = "flowOutType"
        case flowoutcome = "flowOutcome"
        case flowoutcomeid = "flowOutcomeId"
        case flowoutcomevalue = "flowOutcomeValue"
        case flowtype = "flowType"
        case flowversion = "flowVersion"
        case groupid = "groupId"
        case interactiontype = "interactionType"
        case journeyactionid = "journeyActionId"
        case journeyactionmapid = "journeyActionMapId"
        case journeyactionmapversion = "journeyActionMapVersion"
        case journeycustomerid = "journeyCustomerId"
        case journeycustomeridtype = "journeyCustomerIdType"
        case journeycustomersessionid = "journeyCustomerSessionId"
        case journeycustomersessionidtype = "journeyCustomerSessionIdType"
        case mediacount = "mediaCount"
        case mediatype = "mediaType"
        case messagetype = "messageType"
        case originatingdirection = "originatingDirection"
        case outboundcampaignid = "outboundCampaignId"
        case outboundcontactid = "outboundContactId"
        case outboundcontactlistid = "outboundContactListId"
        case participantname = "participantName"
        case peerid = "peerId"
        case proposedagentid = "proposedAgentId"
        case provider = "provider"
        case purpose = "purpose"
        case queueid = "queueId"
        case remote = "remote"
        case removedskillid = "removedSkillId"
        case reoffered = "reoffered"
        case requestedlanguageid = "requestedLanguageId"
        case requestedrouting = "requestedRouting"
        case requestedroutingskillid = "requestedRoutingSkillId"
        case roomid = "roomId"
        case routingpriority = "routingPriority"
        case routingrule = "routingRule"
        case scoredagentid = "scoredAgentId"
        case selectedagentid = "selectedAgentId"
        case selectedagentrank = "selectedAgentRank"
        case sessiondnis = "sessionDnis"
        case sessionid = "sessionId"
        case startinglanguage = "startingLanguage"
        case stationid = "stationId"
        case teamid = "teamId"
        case transfertargetaddress = "transferTargetAddress"
        case transfertargetname = "transferTargetName"
        case transfertype = "transferType"
        case usedrouting = "usedRouting"
        case userid = "userId"
        case wrapupcode = "wrapUpCode"
    }
    public enum Operator: String, Codable { 
        case matches = "matches"
        case exists = "exists"
        case notexists = "notExists"
    }
    /** Optional type, can usually be inferred */
    public var type: ModelType?
    /** Left hand side for dimension predicates */
    public var dimension: Dimension?
    /** Optional operator, default is matches */
    public var _operator: Operator?
    /** Right hand side for dimension predicates */
    public var value: String?
    /** Right hand side for dimension predicates */
    public var range: NumericRange?

    public init(type: ModelType?, dimension: Dimension?, _operator: Operator?, value: String?, range: NumericRange?) {
        
        self.type = type
        
        self.dimension = dimension
        
        self._operator = _operator
        
        self.value = value
        
        self.range = range
        
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case dimension
        case _operator = "operator"
        case value
        case range
    }


}

