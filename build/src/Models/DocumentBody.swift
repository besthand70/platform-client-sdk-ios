//
// DocumentBody.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DocumentBody: Codable {

    /** The list of building blocks for the document body. */
    public var blocks: [DocumentBodyBlock]?

    public init(blocks: [DocumentBodyBlock]?) {
        self.blocks = blocks
    }


}

