//
// DocumentBodyBlock.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DocumentBodyBlock: Codable {

    public enum ModelType: String, Codable { 
        case paragraph = "Paragraph"
        case image = "Image"
        case video = "Video"
        case orderedList = "OrderedList"
        case unorderedList = "UnorderedList"
    }
    /** The type of the block for the body. This determines which body block object (paragraph, list, video or image) would have a value. */
    public var type: ModelType?
    /** Paragraph. It must contain a value if the type of the block is Paragraph. */
    public var paragraph: DocumentBodyParagraph?
    /** Image. It must contain a value if the type of the block is Image. */
    public var image: DocumentBodyImage?
    /** Video. It must contain a value if the type of the block is Video. */
    public var video: DocumentBodyVideo?
    /** List. It must contain a value if the type of the block is UnorderedList or OrderedList. */
    public var list: DocumentBodyList?

    public init(type: ModelType?, paragraph: DocumentBodyParagraph?, image: DocumentBodyImage?, video: DocumentBodyVideo?, list: DocumentBodyList?) {
        self.type = type
        self.paragraph = paragraph
        self.image = image
        self.video = video
        self.list = list
    }


}

