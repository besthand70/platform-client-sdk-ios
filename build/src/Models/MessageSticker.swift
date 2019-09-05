//
// MessageSticker.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class MessageSticker: Codable {

    /** The location of the sticker, useful for retrieving it */
    public var url: String?
    /** The unique id of the the sticker object. */
    public var _id: String?

    public init(url: String?, _id: String?) {
        
        self.url = url
        
        self._id = _id
        
    }

    public enum CodingKeys: String, CodingKey { 
        case url
        case _id = "id"
    }


}

