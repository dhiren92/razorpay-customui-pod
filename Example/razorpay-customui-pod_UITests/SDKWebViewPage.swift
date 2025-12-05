//
//  SDKWebViewPage.swift
//  razorpay-customui-pod
//
//  Created by Vivek Rajesh Shindhe on 03/12/25.
//  Copyright © 2025 CocoaPods. All rights reserved.
//

import XCTest

final class SDKWebViewPage{
    private let webView: XCUIElement
    
    init(app: XCUIApplication) {
        self.webView = app.webViews["main_webview"]
    }
    
    func waitForAppear(timeout: TimeInterval = 30){
        XCTAssertTrue(webView.waitForExistence(timeout: timeout), "SDK WebView does not appear")
    }
    
    func tapSuccessButton() {
        let successButton = webView.buttons
            .containing(NSPredicate(format: "label CONTAINS[c] %@", "Success"))
            .firstMatch
        XCTAssertTrue(successButton.waitForExistence(timeout: 30),
                    "Success button did not appear in time")
        successButton.tap()
    }

    func tapFailureButton() {
        let failureButton = webView.buttons
            .containing(NSPredicate(format: "label CONTAINS[c] %@", "Failure"))
            .firstMatch
        XCTAssertTrue(failureButton.waitForExistence(timeout: 30),
                    "Failure button did not appear in time")
        failureButton.tap()
    }
    
    
}
