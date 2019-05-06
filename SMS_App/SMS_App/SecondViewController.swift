//
//  SecondViewController.swift
//  SMS_App
//
//  Created by Minakshi on 5/3/19.
//  Copyright © 2019 Venkat. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebContent()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadWebContent() {
        if let myURL = URL(string: "http://mohigans.mono.k12.wv.us/ical.ashx?e=&s=6&t=null&sd=5/1/2019&ed=4/30/2020&wk=&n=Events&v=&l=&dee=true") {
            let myRequest = URLRequest(url: myURL)
            webView?.load(myRequest)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

