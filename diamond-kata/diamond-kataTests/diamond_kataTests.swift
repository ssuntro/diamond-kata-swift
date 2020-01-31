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
}
