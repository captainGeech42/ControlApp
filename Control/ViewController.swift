//
//  ViewController.swift
//  Control
//
//  Created by Zander Work on 9/18/16.
//  Copyright © 2016 Zander Work. All rights reserved.
//

import UIKit
import SwiftSocket

class ViewController: UIViewController {
    
    //let socket = SocketIOClient(socketURL: URL(string: "http://10.0.0.57:12345")!, config: [.log(true), .forcePolling(true)])
	
	let host = "10.0.0.82"
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
		NSLog("getproc tapped...")
		NSLog("getproc doens't work yet, returning...")
		return
//		let client = TCPClient(address: host, port: Int32(port))
//		switch client.connect(timeout: 5) {
//		case .success:
//			switch client.send(string: "test\\|/Getproc") {
//			case .success:
//				NSLog("sleep successful...")
//			case .failure(let Error):
//				NSLog(Error as! String)
//			}
//		case .failure(let error):
//			print(error)
//		}
//		client.close()
    }

	@IBAction func sleepTapped(_ sender: UIButton) {
		NSLog("sleep tapped...")
		let client = TCPClient(address: host, port: Int32(port))
		switch client.connect(timeout: 5) {
		case .success:
			switch client.send(string: "test\\|/Sleep") {
			case .success:
				NSLog("sleep successful...")
			case .failure(let Error):
				NSLog(Error as! String)
			}
		case .failure(let error):
			print(error)
		}
		client.close()
    }
    
    @IBAction func shutdownTapped(_ sender: UIButton) {
		NSLog("shutdown tapped...")
		let client = TCPClient(address: host, port: Int32(port))
		switch client.connect(timeout: 5) {
		case .success:
			switch client.send(string: "test\\|/Shutdown") {
			case .success:
				NSLog("sleep successful...")
			case .failure(let Error):
				NSLog(Error as! String)
			}
		case .failure(let error):
			print(error)
		}
		client.close()
    }
    
    @IBAction func rebootTapped(_ sender: UIButton) {
		NSLog("reboot tapped...")
		let client = TCPClient(address: host, port: Int32(port))
		switch client.connect(timeout: 5) {
		case .success:
			switch client.send(string: "test\\|/Reboot") {
			case .success:
				NSLog("sleep successful...")
			case .failure(let Error):
				NSLog(Error as! String)
			}
		case .failure(let error):
			print(error)
		}
		client.close()
    }
}

