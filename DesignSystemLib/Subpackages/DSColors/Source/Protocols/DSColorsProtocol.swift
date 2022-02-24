//
//  DSColorsProtocol.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

/// Protocol that defines color's sections
public protocol DSColorsProtocol {
    var foundation: FoundationColors { get }
    var fontAndIcon: FontAndIconsColors { get }
    var fill: FillColors { get }
}
