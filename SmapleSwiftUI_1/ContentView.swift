

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tripPercentage = 20
    
    let tipPercentages = [10,15,20,25,0]
    
    var body: some View {
        Form {

            Section {
                TextField("Amount", value: $checkAmount,
                          format: .currency(
                          code: Locale.current.currencyCode ?? "USD"))
                .keyboardType(.decimalPad)
            }
            
            Section {
                Text(
                    checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD")
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
