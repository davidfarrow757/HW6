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
    formatter.numberStyle = .none
    formatter.zeroSymbol = ""
    return formatter
}()

struct PostView: View {
    @Environment(\.dismiss) var dismiss
    @State var brand:String = ""
    @State var model:String = ""
    @State var year: Int = 0
    @State var price: Float = 0.0
    @State var start: Date = Date()
    @State var end: Date = Date()
    @State var condition: String = ""
    @State var numSeats: Int = 0
    @State var mpg: Int = 0
    @State var cartype: String = ""
    @State var clearance: Float = 0
    @State var hp: Int = 0
    @State var sqFt: Int = 0
    var body: some View {
        ScrollView{
            LazyVStack{
                Group{
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
                    TextField("Price", value: $price, formatter: floatFormatter, prompt: Text("Price per day").foregroundColor(.orange))
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
                    TextField("Car condition", text: $condition, prompt: Text("Car condition").foregroundColor(.orange))
                        .padding(20)
                        .autocapitalization(.none)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                    TextField("Number of Seats", value: $numSeats, formatter: intFormatter, prompt: Text("Number of seats").foregroundColor(.orange))
                        .padding(20)
                        .autocapitalization(.none)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.orange, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                }
                Group{
                    TextField("Miles per gallon", value: $mpg, formatter: intFormatter, prompt: Text("Miles per Gallon").foregroundColor(.green))
                        .padding(20)
                        .autocapitalization(.none)
                        .font(.largeTitle)
                        .foregroundColor(.green)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.green, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                    TextField("Car type", text: $cartype, prompt: Text("Car type, ex(Hybrid)").foregroundColor(.green))
                        .padding(20)
                        .autocapitalization(.none)
                        .font(.largeTitle)
                        .foregroundColor(.green)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.green, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                }
                Group{
                    TextField("Clearance", value: $clearance, formatter: intFormatter, prompt: Text("Clearnace").foregroundColor(.blue))
                        .padding(20)
                        .autocapitalization(.none)
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.blue, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                    TextField("HorsePower", value: $hp, formatter: intFormatter, prompt: Text("HorsePower").foregroundColor(.blue))
                        .padding(20)
                        .autocapitalization(.none)
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.blue, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                    TextField("Square feet", value: $sqFt, formatter: intFormatter, prompt: Text("Squae feet").foregroundColor(.blue))
                        .padding(20)
                        .autocapitalization(.none)
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                        .disableAutocorrection(true)
                        .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.blue, lineWidth: 3).padding(.horizontal, 12).padding(.vertical, 5))
                }
                Button {
                    Task{
                        Vehicle.DIVERSE_MOCK_POSTS.append(VehicleFactory.shared.generateVehicle(brand: brand, model: model, year: year, price: price, start: start, end: end, condition: condition, numSeats: numSeats, mpg: mpg, cartype: cartype, clearance: clearance, hp: hp, sqFt: sqFt))
                        dismiss()
                    }
                } label: {
                    Text("Add Listing")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .frame(width: 360,height: 70)
                        .background(.orange)
                        .cornerRadius(100)
                    
                }
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
