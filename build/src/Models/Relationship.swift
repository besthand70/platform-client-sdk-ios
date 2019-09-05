//
// Relationship.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class Relationship: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** The user associated with the external organization */
    public var user: User?
    /** The external organization this relationship is attached to */
    public var externalOrganization: ExternalOrganization?
    /** The relationship or role of the user to this external organization.Examples: Account Manager, Sales Engineer, Implementation Consultant */
    public var relationship: String?
    /** Links to the sources of data (e.g. one source might be a CRM) that contributed data to this record.  Read-only, and only populated when requested via expand param. */
    public var externalDataSources: [ExternalDataSource]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, user: User?, externalOrganization: ExternalOrganization?, relationship: String?, externalDataSources: [ExternalDataSource]?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.user = user
        
        self.externalOrganization = externalOrganization
        
        self.relationship = relationship
        
        self.externalDataSources = externalDataSources
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case user
        case externalOrganization
        case relationship
        case externalDataSources
        case selfUri
    }


}

