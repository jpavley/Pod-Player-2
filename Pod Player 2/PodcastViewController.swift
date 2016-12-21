//
//  PodcastViewController.swift
//  Pod Player 2
//
//  Created by John Pavley on 12/17/16.
//  Copyright © 2016 John Pavley. All rights reserved.
//

// NOTE: http://itunes.so-nik.com/
// NOTE: http://codebeautify.org/xmlviewer
// NOTE: https://github.com/drmohundro/SWXMLHash

import Cocoa

class PodcastViewController: NSViewController {
    
    @IBOutlet weak var podcastTextField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        podcastTextField.stringValue = "http://www.espn.com/espnradio/podcast/feeds/itunes/podCast?id=2406595"
    }
    
    @IBAction func addPostcastClicked(_ sender: Any) {
        if let url = URL(string: podcastTextField.stringValue) {
            URLSession.shared.dataTask(with: url, completionHandler: { (data:Data?, response:URLResponse?, error:Error?) in
                if error != nil {
                    print(error!)
                } else {
                    if data != nil {
                        let parser = Parser()
                        if let title = parser.getPodcastMetaData(data: data!) {
                            print(title)
                        }
                    }
                }
            }).resume()
            
            podcastTextField.stringValue = ""
        }
    }
}
