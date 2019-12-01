//
//  SportsEvents.swift
//  Sports Events
//
//  Created by Dale Musser on 11/7/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import Foundation

enum Sport: String, Codable {
    case Hammer
    case Food
    case Pawprint
    case Book
}

struct SportsEvent: Codable {
    var sport: Sport
    var matchup: String
    var date: Date
    var link: String
}

struct SportsEvents: Codable {
    var status: String
    var events: [SportsEvent]
}
