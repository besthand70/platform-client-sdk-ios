//
// SmsPhoneNumber.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SmsPhoneNumber: Codable {

    public enum PhoneNumberType: String, Codable { 
        case local = "local"
        case mobile = "mobile"
        case tollfree = "tollfree"
        case shortcode = "shortcode"
    }
    public enum PhoneNumberStatus: String, Codable { 
        case invalid = "INVALID"
        case active = "ACTIVE"
        case porting = "PORTING"
        case pending = "PENDING"
        case pendingCancellation = "PENDING_CANCELLATION"
    }
    public enum AutoRenewable: String, Codable { 
        case quarterly = "Quarterly"
    }
    public enum ShortCodeBillingType: String, Codable { 
        case basic = "Basic"
        case vanity = "Vanity"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** A phone number provisioned for SMS communications in E.164 format. E.g. +13175555555 or +34234234234 */
    public var phoneNumber: String?
    /** Type of the phone number provisioned. */
    public var phoneNumberType: PhoneNumberType?
    /** Is set to false, if the phone number is provisioned through a SMS provider, outside of PureCloud */
    public var provisionedThroughPureCloud: Bool?
    /** Status of the provisioned phone number. */
    public var phoneNumberStatus: PhoneNumberStatus?
    /** The ISO 3166-1 alpha-2 country code of the country this phone number is associated with. */
    public var countryCode: String?
    /** Date this phone number was provisioned. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var dateCreated: Date?
    /** Date this phone number was modified. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var dateModified: Date?
    /** User that provisioned this phone number */
    public var createdBy: User?
    /** User that last modified this phone number */
    public var modifiedBy: User?
    /** Version number required for updates. */
    public var version: Int?
    /** Date this phone number was purchased, if the phoneNumberType is shortcode. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var purchaseDate: Date?
    /** Contract end date of this phone number, if the phoneNumberType is shortcode. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var cancellationDate: Date?
    /** Contract renewal date of this phone number, if the phoneNumberType is shortcode. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var renewalDate: Date?
    /** Renewal time period of this phone number, if the phoneNumberType is shortcode. */
    public var autoRenewable: AutoRenewable?
    /** The id of an address attached to this phone number. */
    public var addressId: SmsAddress?
    /** BillingType of this phone number, if the phoneNumberType is shortcode. */
    public var shortCodeBillingType: ShortCodeBillingType?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, phoneNumber: String?, phoneNumberType: PhoneNumberType?, provisionedThroughPureCloud: Bool?, phoneNumberStatus: PhoneNumberStatus?, countryCode: String?, dateCreated: Date?, dateModified: Date?, createdBy: User?, modifiedBy: User?, version: Int?, purchaseDate: Date?, cancellationDate: Date?, renewalDate: Date?, autoRenewable: AutoRenewable?, addressId: SmsAddress?, shortCodeBillingType: ShortCodeBillingType?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.phoneNumber = phoneNumber
        
        self.phoneNumberType = phoneNumberType
        
        self.provisionedThroughPureCloud = provisionedThroughPureCloud
        
        self.phoneNumberStatus = phoneNumberStatus
        
        self.countryCode = countryCode
        
        self.dateCreated = dateCreated
        
        self.dateModified = dateModified
        
        self.createdBy = createdBy
        
        self.modifiedBy = modifiedBy
        
        self.version = version
        
        self.purchaseDate = purchaseDate
        
        self.cancellationDate = cancellationDate
        
        self.renewalDate = renewalDate
        
        self.autoRenewable = autoRenewable
        
        self.addressId = addressId
        
        self.shortCodeBillingType = shortCodeBillingType
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case phoneNumber
        case phoneNumberType
        case provisionedThroughPureCloud
        case phoneNumberStatus
        case countryCode
        case dateCreated
        case dateModified
        case createdBy
        case modifiedBy
        case version
        case purchaseDate
        case cancellationDate
        case renewalDate
        case autoRenewable
        case addressId
        case shortCodeBillingType
        case selfUri
    }


}

