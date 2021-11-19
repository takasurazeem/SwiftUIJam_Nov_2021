//
//  File.swift
//  SwiftUIJam_Nov_2021
//
//  Created by Tallak Lindseth von der Lippe on 19/11/2021.
//

import Foundation

extension Array where Element == Character {
    func parenthesisLevel() -> Int {
        return self.reduce(0) { partialResult, char in
            if char == "(" {
                return partialResult + 1
            } else if char == ")" {
                return partialResult - 1
            }
            return partialResult
        }
    }
}

extension Array {
    func split(beforeIndex: Self.Index) -> (Self, Self) {
        return (
            Array(self[0..<beforeIndex]),
            Array(self[beforeIndex..<count])
        )
    }
}



