////
////  razorpay_customui_pod_UITestsLaunchTests.swift
////  razorpay-customui-pod_UITests
////
////  Created by Vivek Rajesh Shindhe on 03/12/25.
////  Copyright © 2025 CocoaPods. All rights reserved.
////
//
//import XCTest
//
//final class razorpay_customui_pod_UITestsLaunchTests: XCTestCase {
//
//    override class var runsForEachTargetApplicationUIConfiguration: Bool {
//        true
//    }
//
//    override func setUpWithError() throws {
//        continueAfterFailure = false
//    }
//
//    @MainActor
//    func testLaunch() throws {
//        let app = XCUIApplication()
//        app.launch()
//
//        // Insert steps here to perform after app launch but before taking a screenshot,
//        // such as logging into a test account or navigating somewhere in the app
//
//        let attachment = XCTAttachment(screenshot: app.screenshot())
//        attachment.name = "Launch Screen"
//        attachment.lifetime = .keepAlways
//        add(attachment)
//    }
//}
