//
//  ShellTests.swift
//  
//
//  Created by Aaron Hinton on 12/28/21.
//
@testable import SwiftShell
import XCTest

class ShellTests: XCTestCase {
    func testShell() {
        let test = Shell.test()
        XCTAssertEqual(test, "Test")
    }
}
