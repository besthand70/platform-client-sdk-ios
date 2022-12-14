//
// NotificationTemplateFooter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Template footer object. */

public class NotificationTemplateFooter: Codable {

    /** Footer text. For WhatsApp, ignored. */
    public var text: String?

    public init(text: String?) {
        self.text = text
    }


}

