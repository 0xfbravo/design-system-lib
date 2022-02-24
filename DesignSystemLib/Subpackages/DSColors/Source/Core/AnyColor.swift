//
//  File.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import SwiftUI

#if os(macOS)
/// This alias represents ``Color`` when running on `macOS`
/// and represents ``UIColor`` when running on other OS.
public typealias AnyColor = Color
#else
/// This alias represents ``Color`` when running on `macOS`
/// and represents ``UIColor`` when running on other OS.
public typealias AnyColor = UIColor
#endif
