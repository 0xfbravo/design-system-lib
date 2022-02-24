//
//  PremiumIconsTheme.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import Foundation

/// This class handles `Premium` specific icons.
///
/// If there's something different for premium theme, you need to override it here.
/// Otherwise, the application will use ``DefaultIconsTheme``.
public struct PremiumIconsTheme: DSIconsProtocol {
    public var general: GeneralIcons { PremiumGeneralIcons() }
    
    public init(){}
}

// MARK: - General
/// ``PremiumGeneralIcons`` is a class that heritages from ``DefaultGeneralIcons``
/// and it's a direct override for specific `General Icons` on premium
fileprivate final class PremiumGeneralIcons: DefaultGeneralIcons {}
