//
//  DI.swift
//  DSDemoApplication
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import Foundation
import Resolver

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        // MARK: Data Layer
        register { RemoteRepository() as RemoteRepositoryProtocol }
        
        // MARK: Domain Layer
        register { GetPlanetsUseCase(repository: resolve()) }
        register { GetSpaceshipsUseCase(repository: resolve()) }
        register { GetVehiclesUseCase(repository: resolve()) }
        register { GetPeopleListUseCase(repository: resolve()) }
        register { GetFilmsUseCase(repository: resolve()) }
        register { GetSpeciesUseCase(repository: resolve()) }
        
        // MARK: Presentation Layer
        register { PeopleListViewModel(getPeopleListUseCase: resolve()) }
    }
}
