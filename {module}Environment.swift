//
//  {module}Environment.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Foundation
import Combine

final class {module}Environment: ObservableObject {

    let objectWillChange = ObservableObjectPublisher()

    @Published var title: String = "{module}" {
       willSet {
            self.objectWillChange.send()
        }
    }
}