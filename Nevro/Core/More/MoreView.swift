//
//  AccountView.swift
//  Nevro
//
//  Created by David Farrow on 7/18/23.
//

import SwiftUI

struct MoreView: View {
    @Binding var refersh: Bool
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Background")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack(alignment: .center){
                        Text("John Abignail").foregroundColor(.orange)
                        Image("DefaultUser")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100,alignment: .center)
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3))
                        Text("Change Profile Picture")
                            .foregroundColor(.orange)
                    }
                    .padding(3)
                    .overlay(Rectangle().stroke(Color.orange, lineWidth: 3))
             
                    NavigationLink {
                        EditAccountView()
                    } label: {
                        Text("Edit Account")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .frame(width: 360,height: 70)
                            .background(.orange)
                            .cornerRadius(100)
                            .padding(.top,50)
                    }
                    
                    NavigationLink {
                        PostView(refresh: $refersh)
                    } label: {
                        Text("Rent your vehicle")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .frame(width: 360,height: 70)
                            .background(.orange)
                            .cornerRadius(100)
                    }
                    
                    ContactSupportView()
                    
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Text("Log out")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .frame(width: 360,height: 70)
                            .background(.orange)
                            .cornerRadius(100)
                        
                    }
                }
            }
        }
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView(refersh: .constant(true))
    }
}
