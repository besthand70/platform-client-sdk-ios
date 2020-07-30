//
// ScimV2EnterpriseUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Defines a SCIM enterprise user. */

public class ScimV2EnterpriseUser: Codable {

    /** The division that the user belongs to. */
    public var division: String?
    /** The department that the user belongs to. */
    public var department: String?
    /** The user&#39;s manager. */
    public var manager: Manager?
    /** The users employee number. */
    public var employeeNumber: String?

    public init(division: String?, department: String?, manager: Manager?, employeeNumber: String?) {
        
        self.division = division
        
        self.department = department
        
        self.manager = manager
        
        self.employeeNumber = employeeNumber
        
    }


}

