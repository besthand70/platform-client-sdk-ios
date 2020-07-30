//
// ScimV2SchemaAttribute.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A complex type that defines service provider attributes or subattributes and their qualities. */

public class ScimV2SchemaAttribute: Codable {

    public enum ModelType: String, Codable { 
        case string = "STRING"
        case boolean = "BOOLEAN"
        case decimal = "DECIMAL"
        case integer = "INTEGER"
        case dateTime = "DATE_TIME"
        case reference = "REFERENCE"
        case complex = "COMPLEX"
    }
    public enum Mutability: String, Codable { 
        case readwrite = "readWrite"
        case readonly = "readOnly"
        case immutable = "immutable"
        case writeonly = "writeOnly"
    }
    public enum Returned: String, Codable { 
        case always = "ALWAYS"
        case never = "NEVER"
        case _default = "DEFAULT"
        case request = "REQUEST"
    }
    public enum Uniqueness: String, Codable { 
        case _none = "NONE"
        case server = "SERVER"
        case global = "GLOBAL"
    }
    public enum ReferenceTypes: String, Codable { 
        case user = "USER"
        case group = "GROUP"
        case external = "EXTERNAL"
        case uri = "URI"
    }
    /** The attribute&#39;s name */
    public var name: String?
    /** The data type of the attribute. */
    public var type: ModelType?
    /** The list of subattributes for an attribute of the type \&quot;complex\&quot;. Uses the same schema as \&quot;attributes\&quot;. */
    public var subAttributes: [ScimV2SchemaAttribute]?
    /** Indicates whether an attribute contains multiple values. */
    public var multiValued: Bool?
    /** The description of the attribute. */
    public var _description: String?
    /** Indicates whether an attribute is required. */
    public var _required: Bool?
    /** The list of standard values that service providers may use. Service providers may ignore unsupported values. */
    public var canonicalValues: [String]?
    /** Indicates whether a string attribute is case-sensitive. If set to \&quot;true\&quot;, the server preserves case sensitivity. If set to \&quot;false\&quot;, the server may change the case. The server also uses case sensitivity when evaluating filters. See section 3.4.2.2 \&quot;Filtering\&quot; in RFC 7644 for details. */
    public var caseExact: Bool?
    /** The circumstances under which an attribute can be defined or redefined. The default is \&quot;readWrite\&quot;. */
    public var mutability: Mutability?
    /** The circumstances under which an attribute and its values are returned in response to a GET, PUT, POST, or PATCH request. */
    public var returned: Returned?
    /** The method by which the service provider enforces the uniqueness of an attribute value. A server can reject a value by returning the HTTP response code 400 (Bad Request). A client can enforce uniqueness to a greater degree than the server provider enforces. For example, a client could make a value unique even though the server has \&quot;uniqueness\&quot; set to \&quot;none\&quot;. */
    public var uniqueness: Uniqueness?
    /** The list of SCIM resource types that may be referenced. Only applies when \&quot;type\&quot; is set to \&quot;reference\&quot;. */
    public var referenceTypes: [ReferenceTypes]?

    public init(name: String?, type: ModelType?, subAttributes: [ScimV2SchemaAttribute]?, multiValued: Bool?, _description: String?, _required: Bool?, canonicalValues: [String]?, caseExact: Bool?, mutability: Mutability?, returned: Returned?, uniqueness: Uniqueness?, referenceTypes: [ReferenceTypes]?) {
        
        self.name = name
        
        self.type = type
        
        self.subAttributes = subAttributes
        
        self.multiValued = multiValued
        
        self._description = _description
        
        self._required = _required
        
        self.canonicalValues = canonicalValues
        
        self.caseExact = caseExact
        
        self.mutability = mutability
        
        self.returned = returned
        
        self.uniqueness = uniqueness
        
        self.referenceTypes = referenceTypes
        
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case type
        case subAttributes
        case multiValued
        case _description = "description"
        case _required = "required"
        case canonicalValues
        case caseExact
        case mutability
        case returned
        case uniqueness
        case referenceTypes
    }


}

