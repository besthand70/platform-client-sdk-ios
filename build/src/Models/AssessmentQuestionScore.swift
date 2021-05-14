//
// AssessmentQuestionScore.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AssessmentQuestionScore: Codable {

    /** True if this was a failed Kill question */
    public var failedKillQuestion: Bool?
    /** Comments provided for the answer */
    public var comments: String?
    /** The ID of the question */
    public var questionId: String?
    /** The ID of the selected answer */
    public var answerId: String?
    /** The score received for this question */
    public var score: Int?
    /** True if this question was marked as NA */
    public var markedNA: Bool?
    /** Answer for free text answer type */
    public var freeTextAnswer: String?

    public init(failedKillQuestion: Bool?, comments: String?, questionId: String?, answerId: String?, score: Int?, markedNA: Bool?, freeTextAnswer: String?) {
        
        self.failedKillQuestion = failedKillQuestion
        
        self.comments = comments
        
        self.questionId = questionId
        
        self.answerId = answerId
        
        self.score = score
        
        self.markedNA = markedNA
        
        self.freeTextAnswer = freeTextAnswer
        
    }


}

