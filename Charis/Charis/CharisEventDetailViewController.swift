//
//  SportsEventDetailViewController.swift
//  Sports Events
//
//  Created by Dale Musser on 2/21/19.
//  Copyright © 2019 Tech Innovator. All rights reserved.
//

import UIKit

class SportsEventDetailViewController: UIViewController {
    @IBOutlet weak var sportImageView: UIImageView!
    @IBOutlet weak var matchupLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    let dateFormatter = DateFormatter()
    
    var sportsEvent: SportsEvent?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .long

        guard let sportsEvent = sportsEvent else {
            return
        }
        
        sportImageView.image = UIImage(named: sportsEvent.sport.rawValue)
        matchupLabel.text = sportsEvent.matchup
        dateLabel.text = dateFormatter.string(from: sportsEvent.date)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
