//
// EvaluationFormAndScoringSet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EvaluationFormAndScoringSet: Codable {

    public var evaluationForm: EvaluationForm?
    public var answers: EvaluationScoringSet?

    public init(evaluationForm: EvaluationForm?, answers: EvaluationScoringSet?) {
        self.evaluationForm = evaluationForm
        self.answers = answers
    }


}

