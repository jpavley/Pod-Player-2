//
//  Parser.swift
//  Pod Player 2
//
//  Created by John Pavley on 12/18/16.
//  Copyright © 2016 John Pavley. All rights reserved.
//

import Foundation

class Parser {
    
    func getPodcastMetaData(data:Data) -> String? {
        
        let parsedXML = SWXMLHash.parse(data)
        print((parsedXML["rss"]["channel"]["title"].element?.text)! as String)
        
        return parsedXML["rss"]["channel"]["title"].element?.text
    }
    
}
