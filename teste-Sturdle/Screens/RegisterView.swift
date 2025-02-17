//
//  RegisterView.swift
//  teste-Sturdle
//
//  Created by found on 13/02/25.
//

import SwiftUI

struct RegisterView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                SturdleLogo()
                
                Text("Faça seu cadastro:")
                    .font(.system(size: 35, weight: .bold))
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .frame(width: 352, height: 42, alignment: .top)
                
                Spacer()
                JGTextFieldView(rectangleName: "Nome de Usuário", text: $username)
                JGTextFieldView(rectangleName: "Senha", text: $password)
                JGTextFieldView(rectangleName: "Confirmar senha", text: $confirmPassword)

                
                Spacer()
                
                HStack{
                    CancelButtonView()
                    Spacer()
                        .frame(width:70, height: 50)

                    
                    GoButtonView()
                    
                }
                Spacer()
            }
            .navigationTitle("Register")
        }
    }
}

#Preview {
    RegisterView()
}
