//
//  Links.swift
//  TextView Properties
//
//  Created by edilsonalmeida on 29/03/24.
//

import SwiftUI


struct Links: View {
    @State var color : Color  = .blue
    @State var buscador : String = ""
    
    var body: some View {
        VStack(spacing: 20){
            Text("Olá **Mundo**")
            Text("Clique em [A](LinkA) ou [B](LinkB) para continuar.").environment(\.openURL, OpenURLAction { url in
                switch url.absoluteString {
                case "LinkA":
                    print(url.absoluteString)
                    return .handled
                case "LinkB":
                    print(url.absoluteString)
                    return .handled
                default:
                    return .systemAction
                }
            })
            ///Retorna exatamente o mesmo link externo clicado, ou decisão interna avisando o swift que foi tudo ok (.handled), ou não ok ( .discarded)
        
            HStack{
                Spacer()
                VStack{
                    TextField("Buscador Interativo", text: $buscador)
                        .multilineTextAlignment(.center)
                    Text("Vamos, [Clique para Buscar \(buscador), ](https://google.com.br) agora").environment(\.openURL, OpenURLAction{ url in
                        ///Para link default usar somente return .systemAction
                        
                        return .systemAction(URL(string: "\(url)/search?q=\(buscador)")!)})
                    ///Adicionando Query on Links com Markdown em uma string literal
                }
                Spacer()
            }
            
            Text("Mudando Cores: [Red](FF0000), [Green](00FF00), [Blue](0000FF)")
                .environment(\.openURL, OpenURLAction { url in
                    withAnimation {
                        /// Extension color using hex
                        ///https://stackoverflow.com/a/56874327
                        color = Color(hex: url.absoluteString)
                    }
                    return .handled
                })
                .foregroundColor(color)
            ///Interagindo diretamente com decisões em uma string literal
        }
    }
}

#Preview {
    Links()
}


