//
//  GetFilmsUseCase.swift
//  DSDemoApplication
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import Foundation

final class GetFilmsUseCase {
    
    init(repository: RemoteRepositoryProtocol) {
        self.repository = repository
    }
    
    // MARK: - Private variables
    private var repository: RemoteRepositoryProtocol
    
    // MARK: - Public Methods
    public func execute() {
        fatalError("Method not implemented yet")
    }
    
}
