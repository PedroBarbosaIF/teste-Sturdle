//
//  telaDeCarregamento.swift
//  teste-Sturdle
//
//  Created by found on 04/02/25.
//

import SwiftUI

struct LoadingView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive{
                WelcomeView()
            } else{
                VStack {
                    Spacer()
                    
                    SturdleIcon()
                    
                    Spacer()
                    
                    ActivityIndicator(isAnimating: .constant(true), style: UIActivityIndicatorView.Style.large)
                    
                    VStack{
                        
                        Text("Developed by")
                            .font(Font.custom("Roboto", size: 24))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(width: 175.94608, height: 36.4, alignment: .top)
                        
                        Text("PeChaGuSa")
                            .font(Font.custom("Roboto", size: 36))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .frame(width: 251, height: 54.6, alignment: .top)
                    }.frame(alignment: .leading)
                }
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation{
                    self.isActive = true
                    
                }
            }
        }
        .frame(minHeight: 300)
        .background(.white)
    }
}

#Preview {
    LoadingView()
}
