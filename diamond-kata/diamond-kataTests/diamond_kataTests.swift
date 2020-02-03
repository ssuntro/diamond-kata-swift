//
//  diamond_kataTests.swift
//  diamond-kataTests
//
//  Created by Siroratt Suntronsuk on 29/1/2563 BE.
//  Copyright © 2563 Siroratt Suntronsuk. All rights reserved.
//

import XCTest
@testable import diamond_kata

class diamond_kataTests: XCTestCase {
    func test_whenInputA_shouldbeA() {
        XCTAssertTrue(Diamond().produce(with:"A") == "A", "input A should return A")
    }
    
    func test_whenInputB_shouldGet3LinesDiamond() {
        XCTAssertTrue(Diamond().produce(with: "B") ==
            """
             A
            B B
             A
            """)
    }
    
//    func test_whenInputC_shouldGet5linesDiamond() {
//        XCTAssertTrue(Diamond().produce(with: "C") ==
//            """
//              A
//             B B
//            C   C
//             B B
//              A
//            """)
//    }
    
    func test_generateQuarterRow_withIndex2() {
        XCTAssertTrue(Diamond().generateQuarterRow(size: 3, char: "A", index: 2) == [" ", " ", "A"])
    }
    
    func test_generateQuarterRow_withIndex1() {
        XCTAssertTrue(Diamond().generateQuarterRow(size: 3, char: "B", index: 1) == [" ", "B", " "])
    }
    
    func test_generateQuarterRow_withIndex0() {
        XCTAssertTrue(Diamond().generateQuarterRow(size: 3, char: "C", index: 0) == ["C", " ", " "])
    }
}
