//
// SkillGroupMemberDivisions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SkillGroupMemberDivisions: Codable {

    public var addDivisionIds: [String]?
    public var removeDivisionIds: [String]?

    public init(addDivisionIds: [String]?, removeDivisionIds: [String]?) {
        self.addDivisionIds = addDivisionIds
        self.removeDivisionIds = removeDivisionIds
    }


}
