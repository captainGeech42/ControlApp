//
//  ViewController.swift
//  Control
//
//  Created by Zander Work on 9/18/16.
//  Copyright © 2016 Zander Work. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //let socket = SocketIOClient(socketURL: URL(string: "http://10.0.0.57:12345")!, config: [.log(true), .forcePolling(true)])
	
	let host = "10.0.0.57"
	let port = 12345

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    @IBAction func processListTapped(_ sender: UIButton) {
    }

    @IBAction func sleepTapped(_ sender: UIButton) {
//		var socket :NSHost = NSHost(address: host)
//		var
    }
    
    @IBAction func shutdownTapped(_ sender: UIButton) {
    }
    
    @IBAction func rebootTapped(_ sender: UIButton) {
    }
}

