//
//  ContactSupportView.swift
//  Nevro
//
//  Created by David Farrow on 7/18/23.
//

import SwiftUI

struct ContactSupportView: View {
    @Environment(\.openURL) var openURL
    @State var alert: Bool = false
    var body: some View {
        HStack {
                Button(action: {
                        alert.toggle()
                    }, label: {
                        Text("Contact Support")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .frame(width: 360,height: 70)
                            .background(.orange)
                            .cornerRadius(100)
                    })
                }
                .alert("Contact Support", isPresented: $alert, actions: {
                    Button(action: {
                        //support email address goes here
                        mailto("jon.doe@mail.com")
                    }, label: {
                        Label("Email", systemImage: "envelope.fill")
                    })
                    Button("Cancel", role: .cancel, action: {})
                })
            }
            
    func mailto(_ email: String) {
        let mailto = "mailto:\(email)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
                print(mailto ?? "")
                if let url = URL(string: mailto!) {
                    openURL(url)
                }
            }
    }
        

struct ContactSupportView_Previews: PreviewProvider {
    static var previews: some View {
        ContactSupportView()
    }
}
