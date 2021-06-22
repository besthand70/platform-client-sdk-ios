//
// AuditTopicAuditLogMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AuditTopicAuditLogMessage: Codable {

    public enum ServiceName: String, Codable { 
        case architect = "Architect"
        case contactCenter = "ContactCenter"
        case contentManagement = "ContentManagement"
        case groups = "Groups"
        case languageUnderstanding = "LanguageUnderstanding"
        case outbound = "Outbound"
        case peoplePermissions = "PeoplePermissions"
        case predictiveEngagement = "PredictiveEngagement"
        case presence = "Presence"
        case quality = "Quality"
        case responseManagement = "ResponseManagement"
        case routing = "Routing"
        case speechAndTextAnalytics = "SpeechAndTextAnalytics"
        case telephony = "Telephony"
        case topicsDefinitions = "TopicsDefinitions"
        case triggers = "Triggers"
        case webDeployments = "WebDeployments"
        case workforceManagement = "WorkforceManagement"
    }
    public enum Action: String, Codable { 
        case create = "Create"
        case view = "View"
        case update = "Update"
        case move = "Move"
        case delete = "Delete"
        case download = "Download"
        case upload = "Upload"
        case memberAdd = "MemberAdd"
        case memberUpdate = "MemberUpdate"
        case memberRemove = "MemberRemove"
        case read = "Read"
        case applyProtection = "ApplyProtection"
        case revokeProtection = "RevokeProtection"
        case updateRetention = "UpdateRetention"
        case readAll = "ReadAll"
        case execute = "Execute"
        case publish = "Publish"
        case unpublish = "Unpublish"
        case activate = "Activate"
        case checkin = "Checkin"
        case checkout = "Checkout"
        case deactivate = "Deactivate"
        case debug = "Debug"
        case save = "Save"
        case revert = "Revert"
        case transcode = "Transcode"
        case enable = "Enable"
        case disable = "Disable"
        case authorize = "Authorize"
        case deauthorize = "Deauthorize"
        case authenticate = "Authenticate"
        case changePassword = "ChangePassword"
        case revoke = "Revoke"
        case export = "Export"
        case append = "Append"
        case recycle = "Recycle"
        case purge = "Purge"
        case processed = "Processed"
    }
    public enum EntityType: String, Codable { 
        case accessToken = "AccessToken"
        case attemptLimits = "AttemptLimits"
        case authOrganization = "AuthOrganization"
        case authUser = "AuthUser"
        case bulkActions = "BulkActions"
        case callAnalysisResponseSet = "CallAnalysisResponseSet"
        case callableTimeSet = "CallableTimeSet"
        case campaign = "Campaign"
        case campaignRule = "CampaignRule"
        case campaignSchedule = "CampaignSchedule"
        case clickstreamSettings = "ClickstreamSettings"
        case configuration = "Configuration"
        case configurationVersion = "ConfigurationVersion"
        case contactList = "ContactList"
        case contactListFilter = "ContactListFilter"
        case did = "DID"
        case didpool = "DIDPool"
        case dnclist = "DNCList"
        case dependencyTrackingBuild = "DependencyTrackingBuild"
        case deployment = "Deployment"
        case document = "Document"
        case edge = "Edge"
        case edgeGroup = "EdgeGroup"
        case emergencyGroup = "EmergencyGroup"
        case eventType = "EventType"
        case _extension = "Extension"
        case extensionPool = "ExtensionPool"
        case feedback = "Feedback"
        case flow = "Flow"
        case flowMilestone = "FlowMilestone"
        case flowOutcome = "FlowOutcome"
        case forecast = "Forecast"
        case historicalData = "HistoricalData"
        case ivr = "IVR"
        case line = "Line"
        case lineBase = "LineBase"
        case maxOrgRoutingUtilizationCapacity = "MaxOrgRoutingUtilizationCapacity"
        case messagingCampaign = "MessagingCampaign"
        case numberPlan = "NumberPlan"
        case oauthclient = "OAuthClient"
        case oauthclientauthorization = "OAuthClientAuthorization"
        case organizationAuthorizationTrust = "OrganizationAuthorizationTrust"
        case organizationAuthorizationUserTrust = "OrganizationAuthorizationUserTrust"
        case organizationSettings = "OrganizationSettings"
        case outboundRoute = "OutboundRoute"
        case outcome = "Outcome"
        case phone = "Phone"
        case phoneBase = "PhoneBase"
        case predictor = "Predictor"
        case program = "Program"
        case prompt = "Prompt"
        case promptResource = "PromptResource"
        case queue = "Queue"
        case recording = "Recording"
        case response = "Response"
        case role = "Role"
        case routingTranscriptionSettings = "RoutingTranscriptionSettings"
        case ruleSet = "RuleSet"
        case schedule = "Schedule"
        case scheduleGroup = "ScheduleGroup"
        case segment = "Segment"
        case sequence = "Sequence"
        case sequenceSchedule = "SequenceSchedule"
        case sessionType = "SessionType"
        case site = "Site"
        case speechTextAnalyticsSettings = "SpeechTextAnalyticsSettings"
        case team = "Team"
        case topic = "Topic"
        case transcriptionSettings = "TranscriptionSettings"
        case trigger = "Trigger"
        case trunk = "Trunk"
        case trunkBase = "TrunkBase"
        case userPresence = "UserPresence"
        case voicemailPolicy = "VoicemailPolicy"
        case voicemailUserPolicy = "VoicemailUserPolicy"
        case workPlan = "WorkPlan"
        case workspace = "Workspace"
        case wrapUpCodeMapping = "WrapUpCodeMapping"
        case wrapupCode = "WrapupCode"
    }
    public var _id: String?
    public var userId: String?
    public var userHomeOrgId: String?
    public var username: AuditTopicDomainEntityRef?
    public var userDisplay: String?
    public var clientId: AuditTopicAddressableEntityRef?
    public var remoteIp: [String]?
    public var serviceName: ServiceName?
    public var eventTime: Date?
    public var message: AuditTopicMessageInfo?
    public var action: Action?
    public var entityType: EntityType?
    public var entity: AuditTopicDomainEntityRef?
    public var propertyChanges: [AuditTopicPropertyChange]?
    public var context: [String:String]?

    public init(_id: String?, userId: String?, userHomeOrgId: String?, username: AuditTopicDomainEntityRef?, userDisplay: String?, clientId: AuditTopicAddressableEntityRef?, remoteIp: [String]?, serviceName: ServiceName?, eventTime: Date?, message: AuditTopicMessageInfo?, action: Action?, entityType: EntityType?, entity: AuditTopicDomainEntityRef?, propertyChanges: [AuditTopicPropertyChange]?, context: [String:String]?) {
        
        self._id = _id
        
        self.userId = userId
        
        self.userHomeOrgId = userHomeOrgId
        
        self.username = username
        
        self.userDisplay = userDisplay
        
        self.clientId = clientId
        
        self.remoteIp = remoteIp
        
        self.serviceName = serviceName
        
        self.eventTime = eventTime
        
        self.message = message
        
        self.action = action
        
        self.entityType = entityType
        
        self.entity = entity
        
        self.propertyChanges = propertyChanges
        
        self.context = context
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case userId
        case userHomeOrgId
        case username
        case userDisplay
        case clientId
        case remoteIp
        case serviceName
        case eventTime
        case message
        case action
        case entityType
        case entity
        case propertyChanges
        case context
    }


}

