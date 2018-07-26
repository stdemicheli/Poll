//
//  VoteController.swift
//  Poll
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import Foundation

class VoteController {
    
    func create(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
    
    private(set) var votes: [Vote] = []

}
