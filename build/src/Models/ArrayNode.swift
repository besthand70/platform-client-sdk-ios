//
// ArrayNode.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ArrayNode: Codable {

    public enum NodeType: String, Codable { 
        case array = "ARRAY"
        case binary = "BINARY"
        case boolean = "BOOLEAN"
        case missing = "MISSING"
        case null = "NULL"
        case number = "NUMBER"
        case object = "OBJECT"
        case pojo = "POJO"
        case string = "STRING"
    }
    public var nodeType: NodeType?
    public var float: Bool?
    public var number: Bool?
    public var boolean: Bool?
    public var object: Bool?
    public var missingNode: Bool?
    public var valueNode: Bool?
    public var binary: Bool?
    public var pojo: Bool?
    public var containerNode: Bool?
    public var int: Bool?
    public var integralNumber: Bool?
    public var short: Bool?
    public var long: Bool?
    public var floatingPointNumber: Bool?
    public var double: Bool?
    public var bigDecimal: Bool?
    public var bigInteger: Bool?
    public var textual: Bool?
    public var array: Bool?
    public var null: Bool?

    public init(nodeType: NodeType?, float: Bool?, number: Bool?, boolean: Bool?, object: Bool?, missingNode: Bool?, valueNode: Bool?, binary: Bool?, pojo: Bool?, containerNode: Bool?, int: Bool?, integralNumber: Bool?, short: Bool?, long: Bool?, floatingPointNumber: Bool?, double: Bool?, bigDecimal: Bool?, bigInteger: Bool?, textual: Bool?, array: Bool?, null: Bool?) {
        
        self.nodeType = nodeType
        
        self.float = float
        
        self.number = number
        
        self.boolean = boolean
        
        self.object = object
        
        self.missingNode = missingNode
        
        self.valueNode = valueNode
        
        self.binary = binary
        
        self.pojo = pojo
        
        self.containerNode = containerNode
        
        self.int = int
        
        self.integralNumber = integralNumber
        
        self.short = short
        
        self.long = long
        
        self.floatingPointNumber = floatingPointNumber
        
        self.double = double
        
        self.bigDecimal = bigDecimal
        
        self.bigInteger = bigInteger
        
        self.textual = textual
        
        self.array = array
        
        self.null = null
        
    }


}

