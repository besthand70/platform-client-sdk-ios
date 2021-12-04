//
// WebMessagingAttachment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Attachment object. */

public class WebMessagingAttachment: Codable {

    public enum MediaType: String, Codable { 
        case image = "Image"
        case video = "Video"
        case audio = "Audio"
        case file = "File"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The type of attachment this instance represents. */
    public var mediaType: MediaType?
    /** URL of the attachment. */
    public var url: String?
    /** Attachment mime type (https://www.iana.org/assignments/media-types/media-types.xhtml). */
    public var mime: String?
    /** Text associated with attachment such as an image caption. */
    public var text: String?
    /** Secure hash of the attachment content. */
    public var sha256: String?
    /** Suggested file name for attachment. */
    public var filename: String?
    /** The file size associated with the file */
    public var fileSize: Int?

    public init(_id: String?, mediaType: MediaType?, url: String?, mime: String?, text: String?, sha256: String?, filename: String?, fileSize: Int?) {
        
        self._id = _id
        
        self.mediaType = mediaType
        
        self.url = url
        
        self.mime = mime
        
        self.text = text
        
        self.sha256 = sha256
        
        self.filename = filename
        
        self.fileSize = fileSize
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case mediaType
        case url
        case mime
        case text
        case sha256
        case filename
        case fileSize
    }


}
