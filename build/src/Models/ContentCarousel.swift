//
// ContentCarousel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Carousel content object. */

public class ContentCarousel: Codable {

    /** An array of card objects. */
    public var cards: [ContentCard]?

    public init(cards: [ContentCard]?) {
        
        self.cards = cards
        
    }


}

