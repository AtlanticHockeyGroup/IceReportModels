//
//  CoachTests.swift
//  IceReportModels
//
//  Created by Courtney Perreault on 2025-03-02.
//

import XCTest
import Vapor
import Fluent
@testable import IceReportModels

final class CoachTests: XCTestCase {
    
    func testCoachInitialization() {
        let coach = Coach(firstName: "John", lastName: "Doe")
        XCTAssertEqual(coach.firstName, "John")
        XCTAssertEqual(coach.lastName, "Doe")
    }
    
    func testCoachInitializationWithID() {
        let id = UUID()
        let coach = Coach(id: id, firstName: "Jane", lastName: "Smith")
        XCTAssertEqual(coach.id, id)
        XCTAssertEqual(coach.firstName, "Jane")
        XCTAssertEqual(coach.lastName, "Smith")
    }
    
    func testCoachSchema() {
        XCTAssertEqual(Coach.schema, "coaches")
    }
    
    static let allTests = [
        ("testCoachInitialization", testCoachInitialization),
        ("testCoachInitializationWithID", testCoachInitializationWithID),
        ("testCoachSchema", testCoachSchema)
    ]
}

