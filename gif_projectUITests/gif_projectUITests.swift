//
//  gif_projectUITests.swift
//  gif_projectUITests
//
//  Created by Jackson on 26/03/23.
//

import XCTest

final class gif_projectUITests: XCTestCase {
    
    // MARK: - XCTestCase
    
    override func setUp() {
        super.setUp()
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    // MARK: - Tests
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    // MARK: - Screen Shots

    func testGenerateScreenShot() {
        
        let app = XCUIApplication()
        app.buttons["Next image"].tap()
        
        let nextImageStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Next image"]/*[[".buttons[\"Next image\"].staticTexts[\"Next image\"]",".staticTexts[\"Next image\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        nextImageStaticText.tap()
        snapshot("01GiftScreen")
        nextImageStaticText.tap()
        snapshot("02GiftScreen")
        nextImageStaticText.tap()
        snapshot("03GiftScreen")
        nextImageStaticText.tap()
        snapshot("04GiftScreen")
    }
}
