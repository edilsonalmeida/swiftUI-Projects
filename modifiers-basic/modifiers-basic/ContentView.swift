//
//  ContentView.swift
//  modifiers-basic
//
//  Created by edilsonalmeida on 02/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image(systemName: "laptopcomputer.and.iphone")
                .foregroundColor(.gray)
                .font(.system(size: 60)) //System images (SF Symbols) are similar to fonts.
            
            Text("Olá, Edilson!")
                .font(.largeTitle) //size
                .fontWeight(.semibold) // Weight
                .foregroundColor(.orange) // Color
                .shadow(radius: 10) // Shadow
                .frame(width: 200, height: 200) //Box Frame
                .background(.gray) // Color of box frame
            
            //The order of modifiers matters, next one affects previous modifiers
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
