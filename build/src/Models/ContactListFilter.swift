//
// ContactListFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ContactListFilter: Codable {

    public enum FilterType: String, Codable { 
        case and = "AND"
        case or = "OR"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The name of the list. */
    public var name: String?
    /** Creation time of the entity. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var dateCreated: Date?
    /** Last modified time of the entity. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var dateModified: Date?
    /** Required for updates, must match the version number of the most recent update */
    public var version: Int?
    /** The contact list the filter is based on. */
    public var contactList: DomainEntityRef?
    /** Groups of conditions to filter the contacts by. */
    public var clauses: [ContactListFilterClause]?
    /** How to join clauses together. */
    public var filterType: FilterType?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, dateCreated: Date?, dateModified: Date?, version: Int?, contactList: DomainEntityRef?, clauses: [ContactListFilterClause]?, filterType: FilterType?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.dateCreated = dateCreated
        
        self.dateModified = dateModified
        
        self.version = version
        
        self.contactList = contactList
        
        self.clauses = clauses
        
        self.filterType = filterType
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case dateCreated
        case dateModified
        case version
        case contactList
        case clauses
        case filterType
        case selfUri
    }


}

