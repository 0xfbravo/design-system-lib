//
//  PremiumColorsTheme.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import Foundation

/// This class handles `Premium` specific colors.
///
/// If there's something different for premium theme, you need to override it here.
/// Otherwise, the application will use ``DefaultColors``.
public struct PremiumColorsTheme: DSColorsProtocol {
    public var foundation: FoundationColors { PremiumFoundationColors() }
    public var fontAndIcon: FontAndIconsColors { PremiumFontAndIconColors() }
    public var fill: FillColors { PremiumFillColors() }

    public init(){}
}

// MARK: - Font & Icon
/// ``PremiumFoundationColors`` is a class that heritages from ``DefaultFoundationColors``
/// and it's a direct override for specific `Foundation Colors` on premium
fileprivate final class PremiumFoundationColors: DefaultFoundationColors {}

// MARK: - Font & Icon
/// ``PremiumFontAndIconColors`` is a class that heritages from ``DefaultFontIcon``
/// and it's a direct override for specific `Font & Icons Colors` on premium
fileprivate final class PremiumFontAndIconColors: DefaultFontAndIconColors {}

// MARK: - Fill
/// ``PremiumFillColors`` is a class that heritages from ``DefaultFill``
/// and it's a direct override for specific `Fill Colors` on premium
fileprivate final class PremiumFillColors: DefaultFillColors {
    override var mainBackground: AnyColor { .loadColor("Premium Main Background") }
}
