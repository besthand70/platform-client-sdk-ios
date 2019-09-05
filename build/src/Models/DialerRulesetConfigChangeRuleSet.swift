//
// DialerRulesetConfigChangeRuleSet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DialerRulesetConfigChangeRuleSet: Codable {

    public var _id: String?
    public var name: String?
    public var dateCreated: Date?
    public var dateModified: Date?
    public var version: Int?
    public var contactList: DialerRulesetConfigChangeUriReference?
    public var queue: DialerRulesetConfigChangeUriReference?
    public var rules: [DialerRulesetConfigChangeRule]?
    public var additionalProperties: JSON?

    public init(_id: String?, name: String?, dateCreated: Date?, dateModified: Date?, version: Int?, contactList: DialerRulesetConfigChangeUriReference?, queue: DialerRulesetConfigChangeUriReference?, rules: [DialerRulesetConfigChangeRule]?, additionalProperties: JSON?) {
        
        self._id = _id
        
        self.name = name
        
        self.dateCreated = dateCreated
        
        self.dateModified = dateModified
        
        self.version = version
        
        self.contactList = contactList
        
        self.queue = queue
        
        self.rules = rules
        
        self.additionalProperties = additionalProperties
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case dateCreated
        case dateModified
        case version
        case contactList
        case queue
        case rules
        case additionalProperties
    }


}

