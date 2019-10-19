//
// AnalyticsEvaluation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AnalyticsEvaluation: Codable {

    /** Unique identifier for the evaluation */
    public var evaluationId: String?
    /** A unique identifier of the PureCloud user who evaluated the interaction */
    public var evaluatorId: String?
    /** Unique identifier for the user being evaluated */
    public var userId: String?
    /** Specifies when an evaluation occurred. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var eventTime: Date?
    /** Unique identifier for the queue the conversation was on */
    public var queueId: String?
    /** Unique identifier for the form used to evaluate the conversation/agent */
    public var formId: String?
    /** A unique identifier for an evaluation form, regardless of version */
    public var contextId: String?
    /** Name of the evaluation form */
    public var formName: String?
    /** The calibration id used for the purpose of training evaluators */
    public var calibrationId: String?
    /** Whether this evaluation has ever been rescored */
    public var rescored: Bool?
    /** Whether this evaluation has been deleted */
    public var deleted: Bool?
    public var oTotalScore: Int64?
    public var oTotalCriticalScore: Int64?

    public init(evaluationId: String?, evaluatorId: String?, userId: String?, eventTime: Date?, queueId: String?, formId: String?, contextId: String?, formName: String?, calibrationId: String?, rescored: Bool?, deleted: Bool?, oTotalScore: Int64?, oTotalCriticalScore: Int64?) {
        
        self.evaluationId = evaluationId
        
        self.evaluatorId = evaluatorId
        
        self.userId = userId
        
        self.eventTime = eventTime
        
        self.queueId = queueId
        
        self.formId = formId
        
        self.contextId = contextId
        
        self.formName = formName
        
        self.calibrationId = calibrationId
        
        self.rescored = rescored
        
        self.deleted = deleted
        
        self.oTotalScore = oTotalScore
        
        self.oTotalCriticalScore = oTotalCriticalScore
        
    }


}

