//
//  CombinedViewController.swift
//  Poll
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EmbedVotingView" || segue.identifier == "EmbedResultsTable" {
            guard let destinationVC = segue.destination as? VoteControllerProtocol else { return }
            destinationVC.voteController = voteController
        }
        
//        // Alternative:
//        if let votingVC = segue.destination as? VotingViewController {
//            votingVC.voteController = voteController
//        }
//
//        if let resultsVC = segue.destination as? ResultsTableViewController {
//            resultsVC.voteController = voteController
//        }
        
    }

    // MARK: - Properties
    var voteController: VoteController?
}
