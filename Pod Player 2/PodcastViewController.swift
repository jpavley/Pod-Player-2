//
//  PodcastViewController.swift
//  Pod Player 2
//
//  Created by John Pavley on 12/17/16.
//  Copyright © 2016 John Pavley. All rights reserved.
//

// NOTE: http://itunes.so-nik.com/
// NOTE: http://codebeautify.org/xmlviewer

import Cocoa

class PodcastViewController: NSViewController {
    
    @IBOutlet weak var podcastTextField: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func addPostcastClicked(_ sender: Any) {
        if let url = URL(string: podcastTextField.stringValue) {
            URLSession.shared.dataTask(with: url, completionHandler: { (data:Data?, response:URLResponse?, error:Error?) in
                if error != nil {
                    print(error)
                } else {
                    
                }
            })
        }
    }
}
