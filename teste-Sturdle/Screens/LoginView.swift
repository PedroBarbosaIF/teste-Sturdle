//
//  RegisterView.swift
//  teste-Sturdle
//
//  Created by found on 05/02/25.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
        
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                SturdleLogo()
                
                Text("Efetue seu login:")
                    .font(.system(size: 35, weight: .bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 307, height: 42, alignment: .top)
                
                Spacer()
                JGTextFieldView(rectangleName: "Nome de Usuário", text: $username)
                    
                
                JGTextFieldView(rectangleName: "Senha", text: $password)
                
                Spacer()
                
                HStack{
                    GoButtonView()
                    
                    Spacer()
                        .frame(width:70, height: 50)
                    
                    CancelButtonView()
                    
                }
                Spacer()
                
                
                
            }
            .navigationTitle("Login")
            .offset(y: -60)
            .background(.white)
        }
    }
}

#Preview {
    LoginView()
}


