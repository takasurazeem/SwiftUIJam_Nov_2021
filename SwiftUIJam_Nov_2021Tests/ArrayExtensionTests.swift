//
//  ArrayExtensionTests.swift
//  SwiftUIJam_Nov_2021Tests
//
//  Created by Tallak Lindseth von der Lippe on 19/11/2021.
//

import XCTest
@testable import SwiftUIJam_Nov_2021

class ArrayExtensionTests: XCTestCase {

    func testParenthesisLevel() {
        XCTAssert(Array("1+(2+3)").parenthesisLevel() == 0)
        XCTAssert(Array("1+(2+3").parenthesisLevel() == 1)
        XCTAssert(Array("1+(2+3(").parenthesisLevel() == 2)
        XCTAssert(Array("1+(2+3()))").parenthesisLevel() == -1)
    }
    
    func testSplitBeforeIndex() {
        XCTAssert(Array("12").split(beforeIndex: 1) == (Array("1"), Array("2")))
        XCTAssert(Array("12").split(beforeIndex: 2) == (Array("12"), Array("")))
        XCTAssert(Array("12").split(beforeIndex: 0) == (Array(""), Array("12")))
    }

}
