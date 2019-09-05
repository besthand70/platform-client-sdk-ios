//
// ArchitectFlowOutcomeNotificationArchitectOperation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ArchitectFlowOutcomeNotificationArchitectOperation: Codable {

    public enum ActionName: String, Codable { 
        case create = "CREATE"
        case checkin = "CHECKIN"
        case debug = "DEBUG"
        case delete = "DELETE"
        case history = "HISTORY"
        case publish = "PUBLISH"
        case stateChange = "STATE_CHANGE"
        case update = "UPDATE"
        case validate = "VALIDATE"
    }
    public enum ActionStatus: String, Codable { 
        case locked = "LOCKED"
        case unlocked = "UNLOCKED"
        case started = "STARTED"
        case pendingGeneration = "PENDING_GENERATION"
        case pendingBackendNotification = "PENDING_BACKEND_NOTIFICATION"
        case success = "SUCCESS"
        case failure = "FAILURE"
    }
    public var _id: String?
    public var complete: Bool?
    public var user: ArchitectFlowOutcomeNotificationUser?
    public var actionName: ActionName?
    public var actionStatus: ActionStatus?
    public var errorMessage: String?
    public var errorCode: String?
    public var errorMessageParams: ArchitectFlowOutcomeNotificationErrorMessageParams?
    public var errorDetails: [ArchitectFlowOutcomeNotificationErrorDetail]?

    public init(_id: String?, complete: Bool?, user: ArchitectFlowOutcomeNotificationUser?, actionName: ActionName?, actionStatus: ActionStatus?, errorMessage: String?, errorCode: String?, errorMessageParams: ArchitectFlowOutcomeNotificationErrorMessageParams?, errorDetails: [ArchitectFlowOutcomeNotificationErrorDetail]?) {
        
        self._id = _id
        
        self.complete = complete
        
        self.user = user
        
        self.actionName = actionName
        
        self.actionStatus = actionStatus
        
        self.errorMessage = errorMessage
        
        self.errorCode = errorCode
        
        self.errorMessageParams = errorMessageParams
        
        self.errorDetails = errorDetails
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case complete
        case user
        case actionName
        case actionStatus
        case errorMessage
        case errorCode
        case errorMessageParams
        case errorDetails
    }


}

