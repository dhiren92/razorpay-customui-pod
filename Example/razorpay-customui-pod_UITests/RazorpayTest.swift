//
//  RazorpayTest.swift
//  razorpay-customui-pod_Tests
//
//  Created by Ramprasad A on 18/04/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import XCTest

class RazorpayTest: XCTestCase {
    
    var app : XCUIApplication!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments += ["-UITests"]    // reserved if you ever want it
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
//       try testCardSuccessPaymentFlow()
        
    }
    
    
    
    func testCardSuccessPaymentFlow() throws {
        
        let entry = FlowEntryScreen(app: app)
        let sdkWeb = SDKWebViewPage(app: app)
    

        // 1. Start the flow
        entry.cardSuccessPayment()

        // 2. Wait for SDK WebView
//        sdkWeb.waitForAppear()

        // 3. Drive WebView (minimum necessary taps)
        // Replace "Pay" with the actual visible label
        sdkWeb.tapSuccessButton()

        let successAlert = app.alerts["SUCCESS"]
        XCTAssertTrue(successAlert.waitForExistence(timeout: 10), "SUCCESS alert did not appear")

        // If you just want to check that it mentions a payment id:
        let msgPredicate = NSPredicate(format: "label CONTAINS %@", "Payment Id")
        let messageLabel = successAlert.staticTexts.element(matching: msgPredicate)
        XCTAssertTrue(messageLabel.exists, "Alert message does not contain 'Payment Id'")
        
    }
    
    func testCardFailurePaymentFlow() throws {
        
        let entry = FlowEntryScreen(app: app)
        let sdkWeb = SDKWebViewPage(app: app)
    

        // 1. Start the flow
        entry.cardSuccessPayment()

        // 2. Wait for SDK WebView
//        sdkWeb.waitForAppear()

        // 3. Drive WebView (minimum necessary taps)
        // Replace "Pay" with the actual visible label
        sdkWeb.tapFailureButton()

        let failureAlert = app.alerts["FAILURE"]
        XCTAssertTrue(failureAlert.waitForExistence(timeout: 10), "FAILURE alert did not appear")

    }

}


