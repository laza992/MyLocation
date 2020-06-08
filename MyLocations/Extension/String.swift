//
//  String.swift
//  MyLocations
//
//  Created by Lazar Stojkovic on 6/4/20.
//  Copyright © 2020 lazar. All rights reserved.
//

import Foundation

extension String {
    
    func addRandomWord() -> String {
        let words = ["rabbit", "banana", "boat"]
        let value = arc4random_uniform(UInt32(words.count))
        let word = words[Int(value)]
        return self + word
    }
    
    mutating func add(text: String?, separatedBy separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}
