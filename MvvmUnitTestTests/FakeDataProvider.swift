//
//  FakeDataProvider.swift
//  MvvmUnitTestTests
//
//  Created by Saad El Oulladi on 24/01/2019.
//  Copyright © 2019 saadeloulladi. All rights reserved.
//

import UIKit
import RxSwift

@testable import MvvmUnitTest

class FakeDataProvider: DataProvider {

    private var fakeCartoon:Cartoon
    
    // A new init method allowing to inject fake data
    init(fakeCartoon: Cartoon) {
            self.fakeCartoon = fakeCartoon
    }
    
    // An overriden method to
    override func getCartoon() -> Observable<Cartoon> {
        return Observable.just(self.fakeCartoon)
    }
    
}
