//
//  WebViewController.swift
//  Sports Events
//
//  Created by Kristyn Long on 4/30/19.
//  Copyright © 2019 Tech Innovator. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    override func loadView() {
        webView.uiDelegate = self
        view = webView
    }
    
    var sportsEvent: SportsEvent?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let sportsEvent = sportsEvent else {
            return
        }
        
        let myURL = URL(string:sportsEvent.link)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)

        // Do any additional setup after loading the view.
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
