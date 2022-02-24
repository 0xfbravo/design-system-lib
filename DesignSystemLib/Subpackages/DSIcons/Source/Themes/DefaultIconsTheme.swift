//
//  DefaultIconsTheme.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import Foundation

/// This class handles default application colors.
///
/// Otherwise, the application will use `Default icons`.
/// - seealso: ``DSIconsProtocol``
public class DefaultIconsTheme: DSIconsProtocol {
    public var general: GeneralIcons { DefaultGeneralIcons() }
    
    public init(){}
}

// MARK: - General
/// This class handles default `General Icons`
class DefaultGeneralIcons: GeneralIcons {
    var house: AnyImage { .loadImage("ic_house") }
    var list: AnyImage { .loadImage("ic_list") }
    var theme: AnyImage { .loadImage("ic_theme") }
}
