//
//  ShellTests.swift
//  
//
//  Created by Aaron Hinton on 12/28/21.
//
@testable import SwiftShell
import XCTest

class ShellTests: XCTestCase {
    func testExecute() throws {
        let test = try Shell.execute(.echo, args: ["Test"])
        XCTAssertEqual(test, "Test")
    }
}
