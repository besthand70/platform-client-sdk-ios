//
// WorkPlanPatternResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WorkPlanPatternResponse: Codable {

    /** List of work plans in order of rotation on a weekly basis */
    public var workPlans: [WorkPlanReference]?

    public init(workPlans: [WorkPlanReference]?) {
        self.workPlans = workPlans
    }


}

