//
// WritableDialerContact.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WritableDialerContact: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The identifier of the contact list containing this contact. */
    public var contactListId: String?
    /** An ordered map of the contact&#39;s columns and corresponding values. */
    public var data: [String:JSON]?
    /** Indicates whether or not the contact can be called. */
    public var callable: Bool?
    /** A map of phone number columns to PhoneNumberStatuses, which indicate if the phone number is callable or not. */
    public var phoneNumberStatus: [String:PhoneNumberStatus]?

    public init(_id: String?, contactListId: String?, data: [String:JSON]?, callable: Bool?, phoneNumberStatus: [String:PhoneNumberStatus]?) {
        
        self._id = _id
        
        self.contactListId = contactListId
        
        self.data = data
        
        self.callable = callable
        
        self.phoneNumberStatus = phoneNumberStatus
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case contactListId
        case data
        case callable
        case phoneNumberStatus
    }


}

