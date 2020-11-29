//
//  {module}View.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Foundation
import SwiftUI

struct {module}View: View, ViewInterface {

    var presenter: {module}Presenter!
    @ObservedObject var viewModel: {module}ViewModel

    var body: some View {
        Text("SwiftUI ❤️ VIPER")
    }

}

struct {module}View_Previews: PreviewProvider {
    static var previews: some View {
        {module}View(presenter: {module}Presenter(), viewModel: {module}ViewModel( error: false, data: {module}Data))
    }
}
