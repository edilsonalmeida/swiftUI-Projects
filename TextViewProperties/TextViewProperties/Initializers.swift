//
//  Initializers.swift
//  TextView Properties
//
//  Created by edilsonalmeida on 29/03/24.
//
import SwiftUI

struct Initializers: View {
    var body: some View {
        VStack(spacing: 20){
            Text("OláMundo")
            /// Inicializador init(_ key: LocalizedStringKey, tableName: String? = nil, bundle: Bundle? = nil, comment: StaticString? = nil)
            /// - Parâmetros:
            ///   - key: A chave para uma string salva na tabela com o id `OláMundo`.
            ///   - tableName: O nome da tabela para buscar. Se `nil`, usa a tabela `Localizable.strings`.
            ///   - bundle: Nome do pacote a ser buscado. Se `nil`, usa o pacote principal.
            ///   - comment: Comentário para identificar a que se refere o chave-valor.
            
            
            let str = "OláMundo"
            Text(str)
            /// Inicializador: init<S> (_ content : S) where S: StringProtocol
            
        }
    }
}

#Preview {
    Initializers()
}
