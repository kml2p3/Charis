//
//  CreateEventViewController.swift
//  Sports Events
//
//  Created by Kristyn Long on 5/6/19.
//  Copyright © 2019 Tech Innovator. All rights reserved.
//

import UIKit

class CreateEventViewController: UIViewController {

    @IBOutlet weak var titleBox: UITextField!
    @IBOutlet weak var websiteBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitEvent(_ sender: Any) {
        let alertController = UIAlertController(title: "Success!", message:
            "Event Created", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
    
        titleBox.text = ""
        websiteBox.text = ""
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
