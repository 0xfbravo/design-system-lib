//
//  SWAPIPersonResponse.swift
//  DSDemoApplication
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import Foundation

public struct SWAPIPeopleResponse: Codable {
    let count: Int
    let next: String
    let previous: String?
    let results: [Person]
}
