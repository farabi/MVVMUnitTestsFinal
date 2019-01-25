//
//  CartoonViewModelTest.swift
//  MvvmUnitTestTests
//
//  Created by Saad El Oulladi on 24/01/2019.
//  Copyright © 2019 saadeloulladi. All rights reserved.
//

import XCTest
import RxSwift
import RxNimble
import Nimble

@testable import MvvmUnitTest

 // MARK: tests fake data
 let fakeCartoon:Cartoon = Cartoon(name: "The Marvelous Misadventures of Flapjack",
                                          logoName: "Flapjack_logo",
                                          characters: ["Flapjack",
                                                       "Captain K'nuckles",
                                                       "Bubbie",
                                                       "Peppermint Larry",
                                                       "Doctor Julius Barber"])
let fakeDataProvider:DataProvider = FakeDataProvider(fakeCartoon: fakeCartoon)

class CartoonViewModelTest: XCTestCase {

    // MARK: Test subject
    let cartoonViewModel:CartoonViewModel = CartoonViewModel(dataProvider: fakeDataProvider)
    
    func testCartoonInformations() {
        
        expect(self.cartoonViewModel.name()).first == fakeCartoon.name
        expect(self.cartoonViewModel.logoName()).first == fakeCartoon.logoName
    }
    
    func testCartoonCharacters() {
        
        let charactersResult:[String] = try! self.cartoonViewModel.characters().toBlocking().first()!
        expect(charactersResult).to(equal(fakeCartoon.characters))
    }

}
