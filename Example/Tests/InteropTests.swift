//
//  InteropTests.swift
//  introspectre
//
//  Created by Mark on 26/03/2016.
//  Copyright © 2016 Mark Frawley. All rights reserved.
//

import Foundation
@testable import introspectre

import XCTest

class InteropTests : XCTestCase {
    func testIntroSpection() {
        let i = Introspectre()
        let methodList = i.methodsForClass(SomeStuff.classForCoder())
        print(methodList)
        XCTAssertNotNil(methodList)
        XCTAssertNotEqual(methodList.count, 0)
        
    }
}