//
//  ContentView.swift
//  Nevro
//
//  Created by David Farrow and Andrew Carter.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        Group{
            if viewModel.userSession == nil{
                SignupLoginView()
            } else {
                AccountView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
