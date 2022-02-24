//
//  AnyImage+LoadImage.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import SwiftUI

extension AnyImage {
    
    /// This function loads an ``AnyImage`` from the Bundle
    static func loadImage(_ name: String) -> AnyImage {
        let bundle = DSIcons.bundle
        
        #if os(macOS)
        return Image(name, bundle: bundle)
        #else
        guard let image = UIImage(named: name, in: bundle, compatibleWith: nil) else {
            fatalError("""
                    Failed to load the image "\(name)".
                    Make sure the image file is included in the project and the image name is spelled correctly.
                    """
                )
        }
        return image
        #endif
    }
    
}
