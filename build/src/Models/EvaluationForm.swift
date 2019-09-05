//
// EvaluationForm.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EvaluationForm: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The evaluation form name */
    public var name: String?
    /** Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var modifiedDate: Date?
    public var published: Bool?
    public var contextId: String?
    /** A list of question groups */
    public var questionGroups: [EvaluationQuestionGroup]?
    public var publishedVersions: DomainEntityListingEvaluationForm?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, modifiedDate: Date?, published: Bool?, contextId: String?, questionGroups: [EvaluationQuestionGroup]?, publishedVersions: DomainEntityListingEvaluationForm?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.modifiedDate = modifiedDate
        
        self.published = published
        
        self.contextId = contextId
        
        self.questionGroups = questionGroups
        
        self.publishedVersions = publishedVersions
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case modifiedDate
        case published
        case contextId
        case questionGroups
        case publishedVersions
        case selfUri
    }


}

