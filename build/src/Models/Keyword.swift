//
// Keyword.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class Keyword: Codable {

    public var _id: String?
    public var name: String?
    /** The word or phrase which is being looked for with speech recognition. */
    public var phrase: String?
    /** A sensitivity threshold that can be increased to lower false positives or decreased to reduce false negatives. */
    public var confidence: Int?
    /** A modifier to the evaluation score when the phrase is spotted in the agent channel */
    public var agentScoreModifier: Int?
    /** A modifier to the evaluation score when the phrase is spotted in the customer channel */
    public var customerScoreModifier: Int?
    /** Other spellings of the phrase that can be added to reduce missed spots (false negatives). */
    public var alternateSpellings: [String]?
    /** The phonetic spellings for the phrase and alternate spellings. */
    public var pronunciations: [String]?
    /** Words that are similar to the phrase but not desired. Added to reduce incorrect spots (false positives). */
    public var antiWords: [String]?
    /** The phonetic spellings for the antiWords. */
    public var antiPronunciations: [String]?
    /** A prediction of how easy it is to unambiguously spot the keyword within its language based on spelling. */
    public var spotabilityIndex: Double?
    public var marginOfError: Double?
    public var pronunciation: String?

    public init(_id: String?, name: String?, phrase: String?, confidence: Int?, agentScoreModifier: Int?, customerScoreModifier: Int?, alternateSpellings: [String]?, pronunciations: [String]?, antiWords: [String]?, antiPronunciations: [String]?, spotabilityIndex: Double?, marginOfError: Double?, pronunciation: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.phrase = phrase
        
        self.confidence = confidence
        
        self.agentScoreModifier = agentScoreModifier
        
        self.customerScoreModifier = customerScoreModifier
        
        self.alternateSpellings = alternateSpellings
        
        self.pronunciations = pronunciations
        
        self.antiWords = antiWords
        
        self.antiPronunciations = antiPronunciations
        
        self.spotabilityIndex = spotabilityIndex
        
        self.marginOfError = marginOfError
        
        self.pronunciation = pronunciation
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case phrase
        case confidence
        case agentScoreModifier
        case customerScoreModifier
        case alternateSpellings
        case pronunciations
        case antiWords
        case antiPronunciations
        case spotabilityIndex
        case marginOfError
        case pronunciation
    }


}

