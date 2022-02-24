//
//  AnyImageAlias.swift
//  
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import SwiftUI

#if os(macOS)
/// This alias represents ``Image`` when running on `macOS`
/// and represents ``UIImage`` when running on other OS.
public typealias AnyImage = Image
#else
/// This alias represents ``Image`` when running on `macOS`
/// and represents ``UIImage`` when running on other OS.
public typealias AnyImage = UIImage
#endif
