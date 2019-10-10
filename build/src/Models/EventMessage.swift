//
// EventMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EventMessage: Codable {

    public enum Code: String, Codable { 
        case approachingContactLimit = "APPROACHING_CONTACT_LIMIT"
        case approachingEntityLimit = "APPROACHING_ENTITY_LIMIT"
        case automaticTimeZoneZipCodeInvalid = "AUTOMATIC_TIME_ZONE_ZIP_CODE_INVALID"
        case campaignStartError = "CAMPAIGN_START_ERROR"
        case campaignRuleStartError = "CAMPAIGN_RULE_START_ERROR"
        case campaignSetDialingModeError = "CAMPAIGN_SET_DIALING_MODE_ERROR"
        case campaignThrottled = "CAMPAIGN_THROTTLED"
        case invalidCallableTimeZone = "INVALID_CALLABLE_TIME_ZONE"
        case callbackCreationInvalidNumber = "CALLBACK_CREATION_INVALID_NUMBER"
        case callRuleInvalidContactColumn = "CALL_RULE_INVALID_CONTACT_COLUMN"
        case callRuleMissingDataActionInput = "CALL_RULE_MISSING_DATA_ACTION_INPUT"
        case callRuleMismatchType = "CALL_RULE_MISMATCH_TYPE"
        case callRuleInvalidOperator = "CALL_RULE_INVALID_OPERATOR"
        case callRuleNoDncListsConfigured = "CALL_RULE_NO_DNC_LISTS_CONFIGURED"
        case callRuleUpdatedPhoneColumn = "CALL_RULE_UPDATED_PHONE_COLUMN"
        case contactListFilterEvaluationFailed = "CONTACT_LIST_FILTER_EVALUATION_FAILED"
        case contactListFilterInternalError = "CONTACT_LIST_FILTER_INTERNAL_ERROR"
        case contactColumnsLimitExceeded = "CONTACT_COLUMNS_LIMIT_EXCEEDED"
        case contactColumnLengthLimitExceeded = "CONTACT_COLUMN_LENGTH_LIMIT_EXCEEDED"
        case contactDatumLengthLimitExceeded = "CONTACT_DATUM_LENGTH_LIMIT_EXCEEDED"
        case contactZipCodeColumnValueInvalid = "CONTACT_ZIP_CODE_COLUMN_VALUE_INVALID"
        case dataActionExecutionFailed = "DATA_ACTION_EXECUTION_FAILED"
        case dataActionAuthenticationFailure = "DATA_ACTION_AUTHENTICATION_FAILURE"
        case dataActionNotFound = "DATA_ACTION_NOT_FOUND"
        case dncAuthenticationFailure = "DNC_AUTHENTICATION_FAILURE"
        case exceededContactLimit = "EXCEEDED_CONTACT_LIMIT"
        case inactiveEdgesFailedPlaceCalls = "INACTIVE_EDGES_FAILED_PLACE_CALLS"
        case inactiveEdgesTurnedCampaignOff = "INACTIVE_EDGES_TURNED_CAMPAIGN_OFF"
        case invalidPhoneNumber = "INVALID_PHONE_NUMBER"
        case importFailedToReadHeaders = "IMPORT_FAILED_TO_READ_HEADERS"
        case importCouldNotParseAnEntry = "IMPORT_COULD_NOT_PARSE_AN_ENTRY"
        case importContactDoesNotMatchListFormat = "IMPORT_CONTACT_DOES_NOT_MATCH_LIST_FORMAT"
        case importEntryDoesNotAlignWithHeaders = "IMPORT_ENTRY_DOES_NOT_ALIGN_WITH_HEADERS"
        case importInvalidCustomId = "IMPORT_INVALID_CUSTOM_ID"
        case importInvalidData = "IMPORT_INVALID_DATA"
        case importColumnExceedsLengthLimit = "IMPORT_COLUMN_EXCEEDS_LENGTH_LIMIT"
        case importDatumExceedsLengthLimit = "IMPORT_DATUM_EXCEEDS_LENGTH_LIMIT"
        case importMissingCustomId = "IMPORT_MISSING_CUSTOM_ID"
        case importNoColumnsDefined = "IMPORT_NO_COLUMNS_DEFINED"
        case importColumnsDoNotExistOnList = "IMPORT_COLUMNS_DO_NOT_EXIST_ON_LIST"
        case importListNoLongerExists = "IMPORT_LIST_NO_LONGER_EXISTS"
        case importFailedContactZipCodeColumnValueInvalid = "IMPORT_FAILED_CONTACT_ZIP_CODE_COLUMN_VALUE_INVALID"
        case importTooManyColumns = "IMPORT_TOO_MANY_COLUMNS"
        case organizationHasNoDomainSet = "ORGANIZATION_HAS_NO_DOMAIN_SET"
        case recycleCampaign = "RECYCLE_CAMPAIGN"
    }
    public var code: Code?
    public var message: String?
    public var messageWithParams: String?
    public var messageParams: [String:JSON]?
    public var documentationUri: String?
    public var resourceURIs: [String]?

    public init(code: Code?, message: String?, messageWithParams: String?, messageParams: [String:JSON]?, documentationUri: String?, resourceURIs: [String]?) {
        
        self.code = code
        
        self.message = message
        
        self.messageWithParams = messageWithParams
        
        self.messageParams = messageParams
        
        self.documentationUri = documentationUri
        
        self.resourceURIs = resourceURIs
        
    }


}

