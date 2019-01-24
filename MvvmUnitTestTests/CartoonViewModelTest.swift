//
//  CartoonViewModelTest.swift
//  MvvmUnitTestTests
//
//  Created by Saad El Oulladi on 24/01/2019.
//  Copyright © 2019 saadeloulladi. All rights reserved.
//

import XCTest
import RxNimble

@testable import MvvmUnitTest

 let fakeCartoon:Cartoon = Cartoon(name: "The Marvelous Misadventures of Flapjack",
                                          logoName: "Flapjack_logo",
                                          characters: ["Flapjack",
                                                       "Captain K'nuckles",
                                                       "Bubbie",
                                                       "Peppermint Larry",
                                                       "Doctor Julius Barber"])

let fakeDataProvider:DataProvider = FakeDataProvider(fakeCartoon: fakeCartoon)

class CartoonViewModelTest: XCTestCase {

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
