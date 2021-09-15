//
// ConversationUserDisposition.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationUserDisposition: Codable {

    /** User-defined wrap-up code for the conversation. */
    public var code: String?
    /** Text entered by the user to describe the call or disposition. */
    public var notes: String?
    /** The user that wrapped up the conversation. */
    public var user: AddressableEntityRef?

    public init(code: String?, notes: String?, user: AddressableEntityRef?) {
        
        self.code = code
        
        self.notes = notes
        
        self.user = user
        
    }


}

