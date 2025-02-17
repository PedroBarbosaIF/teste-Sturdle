//
//  RegisterView.swift
//  teste-Sturdle
//
//  Created by found on 06/02/25.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            VStack{
                SturdleLogo()
                    .padding()
                
                Text("Seja bem-vindo!")
                    .font(.system(size: 35, weight: .bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                
                Text("Você já possui um cadastro?")
                    .font(
                        Font.custom("Be Vietnam Pro", size: 24)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 390, alignment: .top)
                
                
                NavigationLink(destination: LoginView().navigationBarBackButtonHidden(),
                               label: {
                    WelcomeButtonView(redColor: 0,
                               greenColor: 0.93,
                               blueColor: 0.78,
                               buttonName: "Sim, já possuo")
                })
                
                NavigationLink(destination: RegisterView().navigationBarBackButtonHidden(),
                               label: {
                    WelcomeButtonView(redColor: 0.85,
                               greenColor: 0.85,
                               blueColor: 0.85,
                               buttonName: "Não, ainda não possuo.")
                })
                
                
                
            }
            .navigationTitle("Welcome")
            .offset(y: -60)
            .background(.white)
        }
    }
}

#Preview {
    
    WelcomeView()
}
