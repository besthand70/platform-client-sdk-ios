//
// StreetAddress.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class StreetAddress: Codable {

    /** 2 Letter Country code, like US or GB */
    public var country: String?
    /** State or Province */
    public var a1: String?
    /** City or township */
    public var a3: String?
    public var RD: String?
    public var HNO: String?
    public var LOC: String?
    public var NAM: String?
    public var PC: String?

    public init(country: String?, a1: String?, a3: String?, RD: String?, HNO: String?, LOC: String?, NAM: String?, PC: String?) {
        
        self.country = country
        
        self.a1 = a1
        
        self.a3 = a3
        
        self.RD = RD
        
        self.HNO = HNO
        
        self.LOC = LOC
        
        self.NAM = NAM
        
        self.PC = PC
        
    }

    public enum CodingKeys: String, CodingKey { 
        case country
        case a1 = "A1"
        case a3 = "A3"
        case RD
        case HNO
        case LOC
        case NAM
        case PC
    }


}

