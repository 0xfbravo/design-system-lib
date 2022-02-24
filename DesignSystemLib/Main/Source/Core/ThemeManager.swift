//
//  ThemeManager.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import DSColors
import DSIcons

/// This class is responsible for manage the application theme
public struct ThemeManager {
    
    // MARK: Public variables
    public static var colors: DSColorsProtocol = DefaultColorsTheme()
    public static var icons: DSIconsProtocol = DefaultIconsTheme()
    
    // MARK: Methods
    public static func set(_ type: ThemeType) {
        switch type {
        case .`default`:
            colors = DefaultColorsTheme()
            icons = DefaultIconsTheme()
        case .premium:
            colors = PremiumColorsTheme()
            icons = PremiumIconsTheme()
        }
    }
    
}

public enum ThemeType {
    case `default`
    case premium
}
