//
//  GetPeopleUseCase.swift
//  DSDemoApplication
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import Foundation
import Alamofire
import Combine

public final class GetPeopleListUseCase {
    
    init(repository: RemoteRepositoryProtocol) {
        self.repository = repository
    }
    
    // MARK: - Private variables
    private var repository: RemoteRepositoryProtocol
    
    // MARK: - Public Methods
    public func execute() -> AnyPublisher<DataResponse<SWAPIPeopleResponse, AFError>, Never> {
        return repository.getPeopleList()
    }
    
}
