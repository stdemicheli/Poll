//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by De MicheliStefano on 26.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        passVoteControllerToChildViewControllers()
    }
    
    func passVoteControllerToChildViewControllers() {
        guard let viewControllers = viewControllers else { return }
        
        for vc in viewControllers {
            if let vc = vc as? VoteControllerProtocol {
                vc.voteController = voteController
            }
        }
    }
    
    // MARK: - Properties
    let voteController = VoteController()

}
