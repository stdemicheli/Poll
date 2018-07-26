//
//  ResultsTableViewCell.swift
//  Poll
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

class ResultsTableViewCell: UITableViewCell {

    func updateViews() {
        guard let vote = vote else { return }
        nameLabelText.text = vote.name
        responseLabelText.text = vote.response
        dateLabelText.text = formatDate(for: vote.timestamp)
    }
    
    private func formatDate(for date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyy HH:mm"
        return dateFormatter.string(from: date)
    }
    
    // MARK: - Properties
    
    var vote: Vote? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var nameLabelText: UILabel!
    @IBOutlet weak var responseLabelText: UILabel!
    @IBOutlet weak var dateLabelText: UILabel!
    
}
