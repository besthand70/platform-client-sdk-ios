//
// ContentGeneric.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Generic content object */

public class ContentGeneric: Codable {

    /** An ID assigned to this rich message content. Each instance inside the content array has a unique ID. */
    public var _id: String?
    /** Text to show in the title row */
    public var title: String?
    /** Text to show in the description row. This is immediately below the title */
    public var _description: String?
    /** Path or URI to an image file */
    public var image: String?
    /** Path or URI to a video file */
    public var video: String?
    /** User actions available on the content. All actions are optional and all actions are executed simultaneously. */
    public var actions: ContentActions?
    /** An array of component objects */
    public var components: [ButtonComponent]?

    public init(_id: String?, title: String?, _description: String?, image: String?, video: String?, actions: ContentActions?, components: [ButtonComponent]?) {
        
        self._id = _id
        
        self.title = title
        
        self._description = _description
        
        self.image = image
        
        self.video = video
        
        self.actions = actions
        
        self.components = components
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case title
        case _description = "description"
        case image
        case video
        case actions
        case components
    }


}

