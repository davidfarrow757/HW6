//
//  PostView.swift
//  Nevro
//
//  Created by Carter Andrew on 7/26/23.
//

import SwiftUI

let intFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .none
    formatter.zeroSymbol = ""
    return formatter
}()
let floatFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.zeroSymbol = ""
    return formatter
}()

struct PostView: View {
    @State var brand:String = ""
    @State var model:String = ""
    @State var year: Int = 0
    @State var price: Float = 0
    @State var start: Date = Date()
    @State var end: Date = Date()
    var body: some View {
        ScrollView{
            VStack{
                TextField("Brand", text: $brand, prompt: Text("Brand").foregroundColor(.orange))
                    .padding(20)
                    .autocapitalization(.none)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                TextField("Model", text: $model, prompt: Text("Model").foregroundColor(.orange))
                    .padding(20)
                    .autocapitalization(.none)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                TextField("Year", value: $year, formatter: intFormatter, prompt: Text("Year").foregroundColor(.orange))
                    .padding(20)
                    .autocapitalization(.none)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                TextField("Price", value: $price, formatter: floatFormatter, prompt: Text("Price per Month").foregroundColor(.orange))
                    .padding(20)
                    .autocapitalization(.none)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                DatePicker("Start Date", selection: $start)
                    .colorInvert()
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                    .colorMultiply(.orange)
                DatePicker("End Date", selection: $end)
                    .colorInvert()
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                    .colorMultiply(.orange)
                TextField("Miles", value: $price, formatter: floatFormatter, prompt: Text("Miles on Car").foregroundColor(.orange))
                    .padding(20)
                    .autocapitalization(.none)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)
                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
            }
        }
        .background(Color("Background"))
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
