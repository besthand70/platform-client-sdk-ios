//
// LearningAssignment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Learning module assignment with user information */

public class LearningAssignment: Codable {

    public enum State: String, Codable { 
        case assigned = "Assigned"
        case inProgress = "InProgress"
        case completed = "Completed"
        case deleted = "Deleted"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The user who created the assignment */
    public var createdBy: UserReference?
    /** The date when the assignment was created. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** The user who modified the assignment */
    public var modifiedBy: UserReference?
    /** The date when the assignment was last modified. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateModified: Date?
    /** True if the assignment is overdue */
    public var isOverdue: Bool?
    /** True if this assignment was created by a Rule */
    public var isRule: Bool?
    /** True if this assignment was created manually */
    public var isManual: Bool?
    /** The URI for this object */
    public var selfUri: String?
    /** The Learning Assignment state */
    public var state: State?
    /** The recommended completion date of the assignment. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateRecommendedForCompletion: Date?
    /** The version of Learning module assigned */
    public var version: Int?
    /** The Learning module object associated with this assignment */
    public var module: LearningModule?
    /** The user to whom the assignment is assigned */
    public var user: UserReference?

    public init(_id: String?, createdBy: UserReference?, dateCreated: Date?, modifiedBy: UserReference?, dateModified: Date?, isOverdue: Bool?, isRule: Bool?, isManual: Bool?, selfUri: String?, state: State?, dateRecommendedForCompletion: Date?, version: Int?, module: LearningModule?, user: UserReference?) {
        
        self._id = _id
        
        self.createdBy = createdBy
        
        self.dateCreated = dateCreated
        
        self.modifiedBy = modifiedBy
        
        self.dateModified = dateModified
        
        self.isOverdue = isOverdue
        
        self.isRule = isRule
        
        self.isManual = isManual
        
        self.selfUri = selfUri
        
        self.state = state
        
        self.dateRecommendedForCompletion = dateRecommendedForCompletion
        
        self.version = version
        
        self.module = module
        
        self.user = user
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case createdBy
        case dateCreated
        case modifiedBy
        case dateModified
        case isOverdue
        case isRule
        case isManual
        case selfUri
        case state
        case dateRecommendedForCompletion
        case version
        case module
        case user
    }


}

