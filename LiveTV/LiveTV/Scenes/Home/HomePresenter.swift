//
//  HomePresenter.swift
//  LiveTV
//
//  Created by Mihai Pantiru on 08/03/2017.
//  Copyright (c) 2017 AgileFreaks. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol HomePresenterInput {
    func presentSomething(response: Home.Something.Response)
}

protocol HomePresenterOutput: class {
    func displaySomething(viewModel: Home.Something.ViewModel)
}

class HomePresenter: HomePresenterInput {
    weak var output: HomePresenterOutput!

    // MARK: - Presentation logic

    func presentSomething(response _: Home.Something.Response) {
        // NOTE: Format the response from the Interactor and pass the result back to the View Controller

        let viewModel = Home.Something.ViewModel()
        output.displaySomething(viewModel: viewModel)
    }
}