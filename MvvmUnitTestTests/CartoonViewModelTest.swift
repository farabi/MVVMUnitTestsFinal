//
//  CartoonViewModelTest.swift
//  MvvmUnitTestTests
//
//  Created by Saad El Oulladi on 24/01/2019.
//  Copyright © 2019 saadeloulladi. All rights reserved.
//

import XCTest
@testable import MvvmUnitTest

 let fakeCartoon:Cartoon = Cartoon(name: "The Marvelous Misadventures of Flapjack",
                                          logoName: "Flapjack_logo",
                                          characters: ["Flapjack",
                                                       "Captain K'nuckles",
                                                       "Bubbie",
                                                       "Peppermint Larry",
                                                       "Doctor Julius Barber"])

class CartoonViewModelTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }



}
