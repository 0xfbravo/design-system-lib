//
//  DefaultIconsThemeTests.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import XCTest
@testable import DSIcons

final class DefaultIconsThemeTests: XCTestCase {
    
    private let theme = DefaultIconsTheme()
    
    func testGeneralIcons() {
        XCTAssertEqual(theme.general.house, .loadImage("ic_house"))
        XCTAssertEqual(theme.general.list, .loadImage("ic_list"))
        XCTAssertEqual(theme.general.theme, .loadImage("ic_theme"))
    }
    
}
