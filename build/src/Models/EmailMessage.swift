//
// EmailMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EmailMessage: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** The recipients of the email message. */
    public var to: [EmailAddress]?
    /** The recipients that were copied on the email message. */
    public var cc: [EmailAddress]?
    /** The recipients that were blind copied on the email message. */
    public var bcc: [EmailAddress]?
    /** The sender of the email message. */
    public var from: EmailAddress?
    /** The receiver of the reply email message. */
    public var replyTo: EmailAddress?
    /** The subject of the email message. */
    public var subject: String?
    /** The attachments of the email message. */
    public var attachments: [Attachment]?
    /** The text body of the email message. */
    public var textBody: String?
    /** The html body of the email message. */
    public var htmlBody: String?
    /** The time when the message was received or sent. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var time: Date?
    /** Indicates whether the history of previous emails of the conversation is included within the email bodies of this message. */
    public var historyIncluded: Bool?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, to: [EmailAddress]?, cc: [EmailAddress]?, bcc: [EmailAddress]?, from: EmailAddress?, replyTo: EmailAddress?, subject: String?, attachments: [Attachment]?, textBody: String?, htmlBody: String?, time: Date?, historyIncluded: Bool?, selfUri: String?) {
        self._id = _id
        self.name = name
        self.to = to
        self.cc = cc
        self.bcc = bcc
        self.from = from
        self.replyTo = replyTo
        self.subject = subject
        self.attachments = attachments
        self.textBody = textBody
        self.htmlBody = htmlBody
        self.time = time
        self.historyIncluded = historyIncluded
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case to
        case cc
        case bcc
        case from
        case replyTo
        case subject
        case attachments
        case textBody
        case htmlBody
        case time
        case historyIncluded
        case selfUri
    }


}

