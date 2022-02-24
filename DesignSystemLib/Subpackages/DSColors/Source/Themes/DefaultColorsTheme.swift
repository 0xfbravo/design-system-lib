//
//  DefaultColorsTheme.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import Foundation

/// This class handles default application colors.
///
/// Otherwise, the application will use `Default colors`.
/// - seealso: ``DSColorsProtocol``
public class DefaultColorsTheme: DSColorsProtocol {
    public var foundation: FoundationColors { DefaultFoundationColors() }
    public var fontAndIcon: FontAndIconsColors { DefaultFontAndIconColors() }
    public var fill: FillColors { DefaultFillColors() }
    
    public init(){}
}

// MARK: - Foundation
/// This class handles default `Foundation Colors`
class DefaultFoundationColors: FoundationColors {
    var white: AnyColor { .loadColor("White") }
    var black: AnyColor { .loadColor("Black") }
}

// MARK: - Font & Icon
/// This class handles default `Font & Icon Colors`
class DefaultFontAndIconColors: FontAndIconsColors {
    var primary: AnyColor { .loadColor("Primary") }
    var secondary: AnyColor { .loadColor("Secondary") }
    var tertiary: AnyColor { .loadColor("Tertiary") }
}

// MARK: - Fill
/// This class handles default `Fill Colors`
class DefaultFillColors: FillColors {
    var mainBackground: AnyColor { .loadColor("Main Background") }
}
