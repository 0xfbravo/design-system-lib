//
//  RemoteRepository.swift
//  DSDemoApplication
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import Foundation
import Alamofire
import Combine

public protocol RemoteRepositoryProtocol {
    func getPeopleList() -> AnyPublisher<DataResponse<SWAPIPeopleResponse, AFError>, Never>
}

/// This class is responsible for centralize API calls
/// for a better for a better maintenance and following
/// the single responsability principle.
final class RemoteRepository: RemoteRepositoryProtocol {
    
    // MARK: - Properties
    private let baseURL: String = "https://swapi.dev/api/"
    
    // MARK: - Private methods
    private func getURL(for endpoint: SWAPIEndpoints) -> URL {
        return URL(string: "\(baseURL)\(endpoint.rawValue)")!
    }
    
    // MARK: - Methods
    func getPeopleList() -> AnyPublisher<DataResponse<SWAPIPeopleResponse, AFError>, Never> {
        let url = getURL(for: .people)
                
        return AF
            .request(url, method: .get)
            .validate()
            .publishDecodable(type: SWAPIPeopleResponse.self)
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
