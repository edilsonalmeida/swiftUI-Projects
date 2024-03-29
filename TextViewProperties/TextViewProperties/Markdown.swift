//
//  Markdown.swift
//  TextView Properties
//
//  Created by edilsonalmeida on 29/03/24.
//
import SwiftUI

struct Markdown: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Olá **Mundo**")
                ///Personalizando Strings Literais com Markdown
        
            Text("Olá **Mundo**, o que vamos [pesquisar](https://google.com.br) hoje?")
                ///Adicionando Links com Markdown em uma string literal
            
            Text("Problemas com StringProtocol").foregroundStyle(.red)
            let str = "Olá **Mundo**, o que vamos [pesquisar](https://google.com.br) hoje?"
            Text(str)
            /// problemas com StringProtocol

            Text("Solução com StringProtocol").foregroundStyle(.green)
            Text(LocalizedStringKey(str))
            /// Convertemos a  StringProtocol para LocalizedStringKey
            
            Text("Solução com AttributedString").foregroundStyle(.green)
            if let attrStr = try? AttributedString(markdown: str){
                Text(attrStr).tint(.gray)
            }
            /// Convertemos para uma  AttributedString
            /// .tint muda a cor somente do Markdonw
        }
    }
}

#Preview {
    Markdown()
}
