//
//  VoteController.swift
//  Poll
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import Foundation

class VoteController {
    
    func create(name: String, response: String, timestamp: Date) {
        let vote = Vote(name: name, response: response, timestamp: timestamp)
        votes.append(vote)
        votes = votes.sorted(by: { $0.timestamp > $1.timestamp })
    }
    
    private(set) var votes: [Vote] = []

}
