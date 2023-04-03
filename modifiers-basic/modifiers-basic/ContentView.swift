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
                .imageScale(.large)
                .foregroundColor(.gray)
                .font(.system(size: 60))
            Text("Olá, Edilson!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.orange)
                .shadow(radius: 10)
                .frame(width: 200, height: 200)
                .background(.gray)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
