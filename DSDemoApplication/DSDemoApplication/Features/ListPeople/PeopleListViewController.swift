//
//  PeopleListViewController.swift
//  DSDemoApplication
//
//  Created by Fellipe Bravo on 2022-02-24.
//

import UIKit
import Resolver

final class PeopleListViewController: UIViewController {

    // MARK: Private Variables
    @Injected var viewModel: PeopleListViewModel
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.getPeopleList()
    }

}

