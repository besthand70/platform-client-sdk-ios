//
// WhatsAppDefinition.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A WhatsApp messaging template definition as defined in the WhatsApp Business Manager */

public class WhatsAppDefinition: Codable {

    /** The messaging template name. */
    public var name: String?
    /** The messaging template namespace. */
    public var namespace: String?
    /** The messaging template language configured for this template. This is a WhatsApp specific value. For example, &#39;en_US&#39; */
    public var language: String?

    public init(name: String?, namespace: String?, language: String?) {
        
        self.name = name
        
        self.namespace = namespace
        
        self.language = language
        
    }


}
