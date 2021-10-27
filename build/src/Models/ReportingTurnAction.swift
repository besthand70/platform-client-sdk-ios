//
// ReportingTurnAction.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ReportingTurnAction: Codable {

    public enum ActionType: String, Codable { 
        case askForNLUIntentAction = "AskForNLUIntentAction"
        case askForBooleanAction = "AskForBooleanAction"
        case askForSlotAction = "AskForSlotAction"
        case askForNLUNextIntentAction = "AskForNLUNextIntentAction"
        case botState = "BotState"
        case disconnectAction = "DisconnectAction"
        case exitBotFlowAction = "ExitBotFlowAction"
        case callTaskAction = "CallTaskAction"
        case endTaskAction = "EndTaskAction"
        case updateVariableAction = "UpdateVariableAction"
        case communicateAction = "CommunicateAction"
        case decisionAction = "DecisionAction"
        case switchAction = "SwitchAction"
        case dataAction = "DataAction"
        case dataTableLookupAction = "DataTableLookupAction"
        case getExternalContactAction = "GetExternalContactAction"
        case getExternalOrganizationAction = "GetExternalOrganizationAction"
        case loopAction = "LoopAction"
        case exitLoopAction = "ExitLoopAction"
        case nextLoopAction = "NextLoopAction"
        case loopUntilAction = "LoopUntilAction"
        case setActiveIntentAction = "SetActiveIntentAction"
        case clearSlotAction = "ClearSlotAction"
        case setFlowOutcomeAction = "SetFlowOutcomeAction"
        case initializeFlowOutcomeAction = "InitializeFlowOutcomeAction"
        case addFlowMilestoneAction = "AddFlowMilestoneAction"
        case askForStringAction = "AskForStringAction"
        case sendResponseAction = "SendResponseAction"
        case getResponseAction = "GetResponseAction"
        case unknown = "Unknown"
    }
    /** The ID of the action in the bot flow. */
    public var actionId: String?
    /** The name of the action in the bot flow. */
    public var actionName: String?
    /** The number of the action in the bot flow. */
    public var actionNumber: Int?
    public var actionType: ActionType?

    public init(actionId: String?, actionName: String?, actionNumber: Int?, actionType: ActionType?) {
        
        self.actionId = actionId
        
        self.actionName = actionName
        
        self.actionNumber = actionNumber
        
        self.actionType = actionType
        
    }


}

