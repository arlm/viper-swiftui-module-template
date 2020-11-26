//
//  {module}Presenter.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Foundation

final class {module}Presenter: PresenterInterface {
    var router: {module}RouterPresenterInterface!
    var interactor: {module}InteractorPresenterInterface!
    weak var viewModel: {module}ViewModel!
}

extension {module}Presenter: {module}PresenterRouterInterface {

}

extension {module}Presenter: {module}PresenterInteractorInterface {

}

extension {module}Presenter: {module}PresenterViewInterface {

    func start() {

    }

}
