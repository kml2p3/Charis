//
//  ViewController.swift
//  Sports Events
//
//  Created by Dale Musser on 2/19/19.
//  Copyright © 2019 Tech Innovator. All rights reserved.
//

import UIKit

class SportsEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var sportsEventsTableView: UITableView!
    
    let jsonFileName = "sports_events"
    var sportsEvents: SportsEvents?
    
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Sports Events"
        
        sportsEvents = SportsEventsLoader.load(jsonFileName: jsonFileName)
        
        if sportsEvents == nil {
            print("Unable to load and parse \(jsonFileName).json")
        } else {
            print("\(jsonFileName).json successfully loaded and parsed.")
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sportsEvents?.events.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sportsEventCell", for: indexPath)
        
        if let cell = cell as? SportsEventTableViewCell {
            if let sportsEvents = sportsEvents {
                let sportsEvent = sportsEvents.events[indexPath.row]
                cell.sportImageView.image = UIImage(named: sportsEvent.sport.rawValue)
                cell.matchupLabel.text = sportsEvent.matchup
                cell.dateLabel.text = dateFormatter.string(from: sportsEvent.date)
            }
            
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SportsEventDetailViewController,
            let row = sportsEventsTableView.indexPathForSelectedRow?.row {
            destination.sportsEvent = sportsEvents?.events[row]
        }
    }
    
    
}
