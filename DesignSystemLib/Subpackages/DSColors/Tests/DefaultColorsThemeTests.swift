//
//  DefaultColorsThemeTests.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import XCTest
@testable import DSColors

final class DefaultColorsThemeTests: XCTestCase {
    
    private let theme = DefaultColorsTheme()
    
    func testFoundationColors() {
        XCTAssertEqual(theme.foundation.white, .loadColor("White"))
        XCTAssertEqual(theme.foundation.black, .loadColor("Black"))
    }
    
    func testFontIconColors() {
        XCTAssertEqual(theme.fontAndIcon.primary, .loadColor("Primary"))
        XCTAssertEqual(theme.fontAndIcon.secondary, .loadColor("Secondary"))
        XCTAssertEqual(theme.fontAndIcon.tertiary, .loadColor("Tertiary"))
    }
    
    func testFillColors() {
        XCTAssertEqual(theme.fill.mainBackground, .loadColor("Main Background"))
    }

}
