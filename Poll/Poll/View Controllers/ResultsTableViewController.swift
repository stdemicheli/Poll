//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.reload(notification:)), name: Notification.Name("SubmitVote"), object: nil)


    }

    @objc func reload(notification: Notification){
        tableView.reloadData()
    }
    
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteController?.votes.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell", for: indexPath)

        if let vote = voteController?.votes[indexPath.row] {
            //        cell.textLabel?.text = vote?.name
            //        cell.detailTextLabel?.text = vote?.response
            guard let resultCell = cell as? ResultsTableViewCell else { return cell }
            resultCell.vote = vote
            
//            resultsLabelText.text = vote.response
//            nameLabelText.text = vote.name
//            dateLabelText.text = formatDate(for: vote.timestamp)
        }
        
        return cell
    }
    
    // MARK: - Properties
    
    var voteController: VoteController?
    @IBOutlet weak var resultsLabelText: UILabel!
    @IBOutlet weak var nameLabelText: UILabel!
    @IBOutlet weak var dateLabelText: UILabel!
    
}
