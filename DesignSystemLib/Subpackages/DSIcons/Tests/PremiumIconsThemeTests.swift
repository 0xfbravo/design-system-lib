//
//  PremiumIconsThemeTests.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import XCTest
@testable import DSIcons

final class PremiumIconsThemeTests: XCTestCase {
    
    private let theme = PremiumIconsTheme()
    
    func testGeneralIcons() {
        XCTAssertEqual(theme.general.house, .loadImage("ic_house"))
        XCTAssertEqual(theme.general.list, .loadImage("ic_list"))
        XCTAssertEqual(theme.general.theme, .loadImage("ic_theme"))
    }
    
}
