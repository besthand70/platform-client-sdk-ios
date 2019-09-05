//
// DialogflowIntent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DialogflowIntent: Codable {

    /** The intent name */
    public var name: String?
    /** An object mapping parameter names to Parameter objects */
    public var parameters: [String:DialogflowParameter]?

    public init(name: String?, parameters: [String:DialogflowParameter]?) {
        
        self.name = name
        
        self.parameters = parameters
        
    }


}

