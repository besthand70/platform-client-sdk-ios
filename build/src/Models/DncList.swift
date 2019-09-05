//
// DncList.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DncList: Codable {

    public enum DncSourceType: String, Codable { 
        case rds = "rds"
        case dncCom = "dnc.com"
        case gryphon = "gryphon"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The name of the DncList. */
    public var name: String?
    /** Creation time of the entity. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var dateCreated: Date?
    /** Last modified time of the entity. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var dateModified: Date?
    /** Required for updates, must match the version number of the most recent update */
    public var version: Int?
    /** The status of the import process */
    public var importStatus: ImportStatus?
    /** The total number of phone numbers in the DncList. */
    public var size: Int64?
    /** The type of the DncList. */
    public var dncSourceType: DncSourceType?
    /** A dnc.com loginId. Required if the dncSourceType is dnc.com. */
    public var loginId: String?
    /** The list of dnc.com codes to be treated as DNC. Required if the dncSourceType is dnc.com. */
    public var dncCodes: [String]?
    /** A gryphon license number. Required if the dncSourceType is gryphon. */
    public var licenseId: String?
    /** The division this DncList belongs to. */
    public var division: UriReference?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, dateCreated: Date?, dateModified: Date?, version: Int?, importStatus: ImportStatus?, size: Int64?, dncSourceType: DncSourceType?, loginId: String?, dncCodes: [String]?, licenseId: String?, division: UriReference?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.dateCreated = dateCreated
        
        self.dateModified = dateModified
        
        self.version = version
        
        self.importStatus = importStatus
        
        self.size = size
        
        self.dncSourceType = dncSourceType
        
        self.loginId = loginId
        
        self.dncCodes = dncCodes
        
        self.licenseId = licenseId
        
        self.division = division
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case dateCreated
        case dateModified
        case version
        case importStatus
        case size
        case dncSourceType
        case loginId
        case dncCodes
        case licenseId
        case division
        case selfUri
    }


}

