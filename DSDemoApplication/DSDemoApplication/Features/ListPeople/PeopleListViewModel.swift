//
//  PeopleListViewModel.swift
//  DSDemoApplication
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import Foundation
import Combine

final class PeopleListViewModel {
    
    init(getPeopleListUseCase: GetPeopleListUseCase) {
        self.getPeopleListUseCase = getPeopleListUseCase
    }
    
    // MARK: - Private variables
    private var cancellableSet: Set<AnyCancellable> = []
    private let getPeopleListUseCase: GetPeopleListUseCase
    
    // MARK: - Private methods
    
    // MARK: - Public variables
    @Published public var peopleList = [Person]()
    
    // MARK: - Public methods
    func getPeopleList() {
        getPeopleListUseCase
            .execute()
            .sink { (response) in
                if response.error != nil {
                    // TODO: Show alert
                    print(response.error)
                } else {
                    print(response.value!)
                    self.peopleList = response.value!.results
                }
            }
            .store(in: &cancellableSet)
    }
    
}
