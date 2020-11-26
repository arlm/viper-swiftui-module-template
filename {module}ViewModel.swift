//
//  {module}ViewModel.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Combine
import SwiftUI

final class {module}ViewModel: ObservableObject {

    let objectWillChange = ObservableObjectPublisher()

    @Published var error: Bool = false {
        willSet {
            self.objectWillChange.send()
        }
   }
   
   @Published var data: [{module}Entity] =  [{module}Entity]() {
        willSet {
            self.objectWillChange.send()
        }
    }
   
    // same as before by default, but allows to modify if/when needed explicitly
    init(error: Bool = false, data: [{module}Entity] = []) {
        self.error = error
        self.data = data
        
    }   
}
