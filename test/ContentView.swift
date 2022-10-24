//
//  ContentView.swift
//  test
//
//  Created by Sara Alhumidi on 28/03/1444 AH.
//

import SwiftUI

struct ContentView: View {
   
    @State private var milk = false
    @State private var iCed = true
    @State private var suger = false
    @State private var quintity = 0
    
    var body: some View {
        VStack {
            Text("Coffee ☕️").font(Font.largeTitle)

                .foregroundColor(.black)
            HStack{
                Toggle("include milk 🥛", isOn: $iCed)
                
            }
            HStack{
                Toggle("Iced 🧊", isOn: $milk)
                
            }
            HStack{
                Toggle("Spoon of suger 🥄", isOn: $suger)
                
            }
            HStack{
               
                Stepper("Quintity : \(quintity)",
                        value: $quintity,
                        in: 0...130)
            }
            Button("Order"){
             
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
