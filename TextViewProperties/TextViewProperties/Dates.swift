//
//  Dates.swift
//  TextView Properties
//
//  Created by edilsonalmeida on 29/03/24.
//
import SwiftUI

struct Dates: View {
    var body: some View {
        let data = Date(timeIntervalSinceNow: 601)
        
        VStack(spacing: 20){
            Text("\(data) DataAtual + 10 minutos")
            
            Text("\(data, style: .time)  Somente horário")
            
            Text("\(data, style: .timer)  Cronômetro, 10 minutos")
            
            
            Text("\(data, style: .relative)  Cronômetro, min / sec ")
            
            
            
            Text("\(data, style: .relative)  MonoSpaced").monospaced()
           
        }
    }
}

#Preview {
    Dates()
}
