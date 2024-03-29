
//
//  Interpolation.swift
//  TextView Properties
//
//  Created by edilsonalmeida on 29/03/24.
//
import SwiftUI

struct Interpolation: View {
    var body: some View {
        VStack(spacing: 20){
            
            Text("OláMundo, \(Text("OláMundo Pink").foregroundStyle(.pink))").foregroundStyle(.blue)
            ///É possível fazer interpolação com outra view Text, e com novos modifiers por exemplo
        
        }
    }
}

#Preview {
    Interpolation()
}
