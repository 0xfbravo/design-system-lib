//
//  AnyColor+LoadColor.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import SwiftUI

extension AnyColor {
    
    /// This function loads an ``AnyColor`` from the Bundle
    static func loadColor(_ name: String) -> AnyColor {
        let bundle = DSColors.bundle
        
        #if os(macOS)
        return Color(name, bundle: bundle)
        #else
        guard let color = UIColor(named: name, in: bundle, compatibleWith: nil) else {
            fatalError("""
                    Failed to load the color "\(name)".
                    Make sure the color file is included in the project and the color name is spelled correctly.
                    """
                )
        }
        return color
        #endif
    }
    
}
