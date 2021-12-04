//
// AuditQueryEntity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AuditQueryEntity: Codable {

    public enum Name: String, Codable { 
        case accessToken = "AccessToken"
        case actionMap = "ActionMap"
        case actionTemplate = "ActionTemplate"
        case activityCode = "ActivityCode"
        case agentRoutingInfo = "AgentRoutingInfo"
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
        case conversationAttributes = "ConversationAttributes"
        case conversationAccount = "ConversationAccount"
        case conversationDefaultSupportedContent = "ConversationDefaultSupportedContent"
        case conversationPhoneNumber = "ConversationPhoneNumber"
        case conversationRecipient = "ConversationRecipient"
        case conversationThreadingWindow = "ConversationThreadingWindow"
        case dashboardSettings = "DashboardSettings"
        case dependencyTrackingBuild = "DependencyTrackingBuild"
        case deployment = "Deployment"
        case did = "DID"
        case didpool = "DIDPool"
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
        case emergencyGroup = "EmergencyGroup"
        case evaluation = "Evaluation"
        case evaluationForm = "EvaluationForm"
        case eventType = "EventType"
        case exports = "Exports"
        case _extension = "Extension"
        case extensionPool = "ExtensionPool"
        case externalMetricsData = "ExternalMetricsData"
        case externalMetricsDefinition = "ExternalMetricsDefinition"
        case feedback = "Feedback"
        case flow = "Flow"
        case flowMilestone = "FlowMilestone"
        case flowOutcome = "FlowOutcome"
        case forecast = "Forecast"
        case historicalData = "HistoricalData"
        case insightSettings = "InsightSettings"
        case integration = "Integration"
        case ivr = "IVR"
        case knowledgeBase = "KnowledgeBase"
        case knowledgeCategory = "KnowledgeCategory"
        case knowledgeDocument = "KnowledgeDocument"
        case knowledgeDocumentVariation = "KnowledgeDocumentVariation"
        case knowledgeSearchFeedback = "KnowledgeSearchFeedback"
        case knowledgeTraining = "KnowledgeTraining"
        case line = "Line"
        case lineBase = "LineBase"
        case location = "Location"
        case managementUnit = "ManagementUnit"
        case maxOrgRoutingUtilizationCapacity = "MaxOrgRoutingUtilizationCapacity"
        case mediaDiagnosticsTraceFile = "MediaDiagnosticsTraceFile"
        case messagingCampaign = "MessagingCampaign"
        case metric = "Metric"
        case module = "Module"
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
        case recordingSettings = "RecordingSettings"
        case response = "Response"
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
        case speechTextAnalyticsSettings = "SpeechTextAnalyticsSettings"
        case status = "Status"
        case supportedContent = "SupportedContent"
        case supportFile = "SupportFile"
        case survey = "Survey"
        case surveyForm = "SurveyForm"
        case team = "Team"
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
        case workPlan = "WorkPlan"
        case workPlanRotation = "WorkPlanRotation"
        case workspace = "Workspace"
        case wrapupCode = "WrapupCode"
        case wrapUpCodeMapping = "WrapUpCodeMapping"
        case participant = "Participant"
    }
    public enum Actions: String, Codable { 
        case create = "Create"
        case view = "View"
        case update = "Update"
        case move = "Move"
        case delete = "Delete"
        case deleteAll = "DeleteAll"
        case download = "Download"
        case upload = "Upload"
        case memberAdd = "MemberAdd"
        case memberUpdate = "MemberUpdate"
        case memberRemove = "MemberRemove"
        case read = "Read"
        case readAll = "ReadAll"
        case execute = "Execute"
        case applyProtection = "ApplyProtection"
        case revokeProtection = "RevokeProtection"
        case updateRetention = "UpdateRetention"
        case abandon = "Abandon"
        case archive = "Archive"
        case restoreRequest = "RestoreRequest"
        case restoreComplete = "RestoreComplete"
        case promote = "Promote"
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
        case _open = "Open"
        case approved = "Approved"
        case rejected = "Rejected"
        case rollback = "Rollback"
        case implementingChange = "ImplementingChange"
        case changeImplemented = "ChangeImplemented"
        case implementingRollback = "ImplementingRollback"
        case rollbackImplemented = "RollbackImplemented"
        case write = "Write"
        case purge = "Purge"
        case processed = "Processed"
        case replace = "Replace"
        case updateInService = "UpdateInService"
        case updateOutOfService = "UpdateOutOfService"
        case cycle = "Cycle"
        case scale = "Scale"
        case ipAllowlistClear = "IpAllowlistClear"
        case addPairingRole = "AddPairingRole"
        case add = "Add"
        case verify = "Verify"
        case assign = "Assign"
        case unassign = "Unassign"
        case reassign = "Reassign"
        case reschedule = "Reschedule"
        case cancel = "Cancel"
        case softDelete = "SoftDelete"
    }
    /** Name of the Entity */
    public var name: Name?
    /** List of Actions */
    public var actions: [Actions]?

    public init(name: Name?, actions: [Actions]?) {
        
        self.name = name
        
        self.actions = actions
        
    }


}

