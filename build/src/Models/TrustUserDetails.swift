//
// TrustUserDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TrustUserDetails: Codable {

    /** Date Trust User was added. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** User that added trusted user. */
    public var createdBy: OrgUser?

    public init(dateCreated: Date?, createdBy: OrgUser?) {
        self.dateCreated = dateCreated
        self.createdBy = createdBy
    }


}

