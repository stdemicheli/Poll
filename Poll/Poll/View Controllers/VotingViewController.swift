//
//  VotingViewController.swift
//  Poll
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submit(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Properties
    
    @IBOutlet weak var votingTitleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    

}
