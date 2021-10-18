//
//  ContentView.swift
//  CalculatingAmountApp
//
//  Created by Eldar Haseljic on 10/18/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
  
    @State var total: String = "20"
    @State var tipPercent: Double = 15.0
    
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
            
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .border(Color.black, width: 0.25)
            }
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            
            if let totalNumber: Double = Double(total) {
                Text("Total Amount: $\(totalNumber * tipPercent / 100, specifier: "%0.2f")")
            } else {
                Text("Please enter a valid numerical value.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
