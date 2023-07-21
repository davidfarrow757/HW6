//
//  ContentView.swift
//  Nevro
//
//  Created by David Farrow and Andrew Carter.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    var body: some View {
        Group{
            if viewModel.userSession == nil{
                SignupLoginView()
                    .environmentObject(registrationViewModel)
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
