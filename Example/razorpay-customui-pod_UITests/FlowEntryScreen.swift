//
//  FlowEntryScreen.swift
//  razorpay-customui-pod
//
//  Created by Vivek Rajesh Shindhe on 03/12/25.
//  Copyright © 2025 CocoaPods. All rights reserved.
//

import XCTest

final class FlowEntryScreen {
    private let app : XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    func cardSuccessPayment(){
        app.staticTexts["Card Payment"].tap()
    }
}
