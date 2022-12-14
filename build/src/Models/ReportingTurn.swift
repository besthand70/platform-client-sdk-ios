//
// ReportingTurn.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ReportingTurn: Codable {

    public enum AskActionResult: String, Codable { 
        case successCollection = "SuccessCollection"
        case successConfirmationYes = "SuccessConfirmationYes"
        case successConfirmationNo = "SuccessConfirmationNo"
        case noMatchCollection = "NoMatchCollection"
        case noMatchConfirmation = "NoMatchConfirmation"
        case agentRequestedByUser = "AgentRequestedByUser"
        case confirmationRequired = "ConfirmationRequired"
        case error = "Error"
        case expressionError = "ExpressionError"
        case noInputCollection = "NoInputCollection"
        case noInputConfirmation = "NoInputConfirmation"
        case disambiguationRequired = "DisambiguationRequired"
        case successDisambiguation = "SuccessDisambiguation"
        case successDisambiguationNone = "SuccessDisambiguationNone"
        case noMatchDisambiguation = "NoMatchDisambiguation"
        case noInputDisambiguation = "NoInputDisambiguation"
    }
    /** The chosen user input associated with this reporting turn. */
    public var userInput: String?
    /** The bot prompts associated with this reporting turn. */
    public var botPrompts: [String]?
    /** The bot session ID that this reporting turn is grouped under. */
    public var sessionId: String?
    /** The bot flow 'ask' action associated with this reporting turn (e.g. AskForIntent). */
    public var askAction: ReportingTurnAction?
    /** The intent and associated slots detected during this reporting turn. */
    public var intent: ReportingTurnIntent?
    /** The knowledge data captured during this reporting turn. */
    public var knowledge: ReportingTurnKnowledge?
    /** Timestamp indicating when the original turn was created. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** Result of the bot flow 'ask' action. */
    public var askActionResult: AskActionResult?
    /** The details related to end of bot flow session. */
    public var sessionEndDetails: SessionEndDetails?
    /** The conversation details, across potentially multiple Bot Flow sessions. */
    public var conversation: AddressableEntityRef?

    public init(userInput: String?, botPrompts: [String]?, sessionId: String?, askAction: ReportingTurnAction?, intent: ReportingTurnIntent?, knowledge: ReportingTurnKnowledge?, dateCreated: Date?, askActionResult: AskActionResult?, sessionEndDetails: SessionEndDetails?, conversation: AddressableEntityRef?) {
        self.userInput = userInput
        self.botPrompts = botPrompts
        self.sessionId = sessionId
        self.askAction = askAction
        self.intent = intent
        self.knowledge = knowledge
        self.dateCreated = dateCreated
        self.askActionResult = askActionResult
        self.sessionEndDetails = sessionEndDetails
        self.conversation = conversation
    }


}

