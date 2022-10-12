//
// EntityChange.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EntityChange: Codable {

    public enum EntityType: String, Codable { 
        case accessToken = "AccessToken"
        case action = "Action"
        case actionDraft = "ActionDraft"
        case actionMap = "ActionMap"
        case actionTemplate = "ActionTemplate"
        case activityCode = "ActivityCode"
        case adherenceExplanation = "AdherenceExplanation"
        case agentRoutingInfo = "AgentRoutingInfo"
        case analyticsReportingSettings = "AnalyticsReportingSettings"
        case annotation = "Annotation"
        case appointment = "Appointment"
        case assignment = "Assignment"
        case attemptLimits = "AttemptLimits"
        case authOrganization = "AuthOrganization"
        case authUser = "AuthUser"
        case bulk = "Bulk"
        case bulkActions = "BulkActions"
        case businessUnit = "BusinessUnit"
        case calibration = "Calibration"
        case callableTimeSet = "CallableTimeSet"
        case callAnalysisResponseSet = "CallAnalysisResponseSet"
        case campaign = "Campaign"
        case campaignRule = "CampaignRule"
        case campaignSchedule = "CampaignSchedule"
        case changeRequest = "ChangeRequest"
        case clickstreamSettings = "ClickstreamSettings"
        case configuration = "Configuration"
        case configurationVersion = "ConfigurationVersion"
        case contactList = "ContactList"
        case contactListFilter = "ContactListFilter"
        case contactSchema = "ContactSchema"
        case conversationAttributes = "ConversationAttributes"
        case conversationAccount = "ConversationAccount"
        case conversationDefaultSupportedContent = "ConversationDefaultSupportedContent"
        case conversationPhoneNumber = "ConversationPhoneNumber"
        case conversationRecipient = "ConversationRecipient"
        case conversationThreadingWindow = "ConversationThreadingWindow"
        case credential = "Credential"
        case dashboardSettings = "DashboardSettings"
        case defaultPanelSettings = "DefaultPanelSettings"
        case dependencyTrackingBuild = "DependencyTrackingBuild"
        case deployment = "Deployment"
        case did = "DID"
        case didpool = "DIDPool"
        case digitalRuleSet = "DigitalRuleSet"
        case directoryGroup = "DirectoryGroup"
        case dnclist = "DNCList"
        case document = "Document"
        case dynamicGroup = "DynamicGroup"
        case dynamicSchema = "DynamicSchema"
        case edge = "Edge"
        case edgeGroup = "EdgeGroup"
        case edgeLog = "EdgeLog"
        case edgeLogZip = "EdgeLogZip"
        case edgePcaps = "EdgePcaps"
        case edgePreferences = "EdgePreferences"
        case edgeTraceLevel = "EdgeTraceLevel"
        case emailCampaignSchedule = "EmailCampaignSchedule"
        case emergencyGroup = "EmergencyGroup"
        case enterpriseAgreement = "EnterpriseAgreement"
        case evaluation = "Evaluation"
        case evaluationForm = "EvaluationForm"
        case eventType = "EventType"
        case exports = "Exports"
        case _extension = "Extension"
        case extensionPool = "ExtensionPool"
        case externalMetricsData = "ExternalMetricsData"
        case externalMetricsDefinition = "ExternalMetricsDefinition"
        case externalOrganizationSchema = "ExternalOrganizationSchema"
        case feedback = "Feedback"
        case flow = "Flow"
        case flowMilestone = "FlowMilestone"
        case flowOutcome = "FlowOutcome"
        case forecast = "Forecast"
        case gdprRequest = "GdprRequest"
        case historicalData = "HistoricalData"
        case insightSettings = "InsightSettings"
        case integration = "Integration"
        case ivr = "IVR"
        case knowledgeBase = "KnowledgeBase"
        case knowledgeCategory = "KnowledgeCategory"
        case knowledgeDocument = "KnowledgeDocument"
        case knowledgeDocumentVariation = "KnowledgeDocumentVariation"
        case knowledgeLabel = "KnowledgeLabel"
        case knowledgeSearchFeedback = "KnowledgeSearchFeedback"
        case knowledgeTraining = "KnowledgeTraining"
        case line = "Line"
        case lineBase = "LineBase"
        case location = "Location"
        case managementUnit = "ManagementUnit"
        case maxOrgRoutingUtilizationCapacity = "MaxOrgRoutingUtilizationCapacity"
        case mediaDiagnosticsTraceFile = "MediaDiagnosticsTraceFile"
        case messagingCampaign = "MessagingCampaign"
        case messagingCampaignSchedule = "MessagingCampaignSchedule"
        case metric = "Metric"
        case module = "Module"
        case numberOrder = "NumberOrder"
        case numberPlan = "NumberPlan"
        case oauthclient = "OAuthClient"
        case oauthclientauthorization = "OAuthClientAuthorization"
        case organizationAuthorizationTrust = "OrganizationAuthorizationTrust"
        case organizationAuthorizationUserTrust = "OrganizationAuthorizationUserTrust"
        case organizationFeature = "OrganizationFeature"
        case organizationIntegrationsAccess = "OrganizationIntegrationsAccess"
        case organizationSettings = "OrganizationSettings"
        case orphanedRecording = "OrphanedRecording"
        case outboundRoute = "OutboundRoute"
        case outcome = "Outcome"
        case pcaps = "Pcaps"
        case phone = "Phone"
        case phoneBase = "PhoneBase"
        case planningGroup = "PlanningGroup"
        case policy = "Policy"
        case predictor = "Predictor"
        case product = "Product"
        case profile = "Profile"
        case profileMembers = "ProfileMembers"
        case program = "Program"
        case prompt = "Prompt"
        case promptResource = "PromptResource"
        case queue = "Queue"
        case recording = "Recording"
        case recordingAnnotation = "RecordingAnnotation"
        case recordingKey = "RecordingKey"
        case recordingKeyConfig = "RecordingKeyConfig"
        case recordingSettings = "RecordingSettings"
        case response = "Response"
        case responseAsset = "ResponseAsset"
        case role = "Role"
        case row = "Row"
        case routingTranscriptionSettings = "RoutingTranscriptionSettings"
        case routingUtilizationTag = "RoutingUtilizationTag"
        case rule = "Rule"
        case ruleSet = "RuleSet"
        case schedule = "Schedule"
        case scheduledExports = "ScheduledExports"
        case scheduleGroup = "ScheduleGroup"
        case schema = "Schema"
        case screenRecording = "ScreenRecording"
        case segment = "Segment"
        case sentimentFeedback = "SentimentFeedback"
        case sequence = "Sequence"
        case sequenceSchedule = "SequenceSchedule"
        case serviceGoalTemplate = "ServiceGoalTemplate"
        case sessionType = "SessionType"
        case shiftTrade = "ShiftTrade"
        case site = "Site"
        case skillsGroup = "SkillsGroup"
        case speechTextAnalyticsSettings = "SpeechTextAnalyticsSettings"
        case status = "Status"
        case supportedContent = "SupportedContent"
        case supportFile = "SupportFile"
        case survey = "Survey"
        case surveyForm = "SurveyForm"
        case team = "Team"
        case timeOffLimit = "TimeOffLimit"
        case timeOffPlan = "TimeOffPlan"
        case timeOffRequest = "TimeOffRequest"
        case topic = "Topic"
        case transcriptionSettings = "TranscriptionSettings"
        case trigger = "Trigger"
        case trunk = "Trunk"
        case trunkBase = "TrunkBase"
        case user = "User"
        case userPresence = "UserPresence"
        case voicemailPolicy = "VoicemailPolicy"
        case voicemailUserPolicy = "VoicemailUserPolicy"
        case webhook = "Webhook"
        case workbin = "Workbin"
        case workitem = "Workitem"
        case workPlan = "WorkPlan"
        case workPlanRotation = "WorkPlanRotation"
        case workspace = "Workspace"
        case worktype = "Worktype"
        case wrapupCode = "WrapupCode"
        case wrapUpCodeMapping = "WrapUpCodeMapping"
        case participant = "Participant"
    }
    /** Id of the entity that was changed */
    public var entityId: String?
    /** Name of the entity that was changed */
    public var entityName: String?
    /** Type of the entity that was changed */
    public var entityType: EntityType?
    /** Previous values for the entity. */
    public var oldValues: [String]?
    /** New values for the entity. */
    public var newValues: [String]?

    public init(entityId: String?, entityName: String?, entityType: EntityType?, oldValues: [String]?, newValues: [String]?) {
        self.entityId = entityId
        self.entityName = entityName
        self.entityType = entityType
        self.oldValues = oldValues
        self.newValues = newValues
    }


}

