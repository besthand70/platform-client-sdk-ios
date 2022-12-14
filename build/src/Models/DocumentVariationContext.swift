//
// DocumentVariationContext.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DocumentVariationContext: Codable {

    /** The knowledge context associated with the variation. */
    public var context: KnowledgeContextReference?
    /** The list of knowledge context values associated with the variation. */
    public var values: [KnowledgeContextValueReference]?

    public init(context: KnowledgeContextReference?, values: [KnowledgeContextValueReference]?) {
        self.context = context
        self.values = values
    }


}

