//
// NluInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class NluInfo: Codable {

    public var domain: AddressableEntityRef?
    public var version: NluDomainVersion?
    public var intents: [Intent]?

    public init(domain: AddressableEntityRef?, version: NluDomainVersion?, intents: [Intent]?) {
        
        self.domain = domain
        
        self.version = version
        
        self.intents = intents
        
    }


}

