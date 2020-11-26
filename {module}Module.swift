//
//  {module}Module.swift
//  {project}
//
//  Created by {author} on {date}.
//

import SwiftUI

// MARK: - router

protocol {module}RouterPresenterInterface: RouterPresenterInterface {

}

// MARK: - presenter

protocol {module}PresenterRouterInterface: PresenterRouterInterface {

}

protocol {module}PresenterInteractorInterface: PresenterInteractorInterface {

}

protocol {module}PresenterViewInterface: PresenterViewInterface {
    func start()
}

// MARK: - interactor

protocol {module}InteractorPresenterInterface: InteractorPresenterInterface {

}

// MARK: - module builder

final class {module}Module: ModuleInterface {

    typealias View = {module}View
    typealias Interactor = {module}Interactor
    typealias Router = {module}Router
    typealias Presenter = {module}Presenter

    func build() -> UIViewController {
        let presenter = Presenter()
        let interactor = Interactor()
        let router = Router()

        let viewModel = {module}ViewModel()
        let view = View(presenter: presenter, viewModel: viewModel)
        	.environmentObject({module}Environment())
        	
        presenter.viewModel = viewModel
        
        self.assemble(presenter: presenter, router: router, interactor: interactor)

        let viewController = UIHostingController(rootView: view)
        router.viewController = viewController
        return viewController
    }
}
