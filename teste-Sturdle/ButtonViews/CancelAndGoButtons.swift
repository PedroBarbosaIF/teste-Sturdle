//
//  CancelAndGoButtons.swift
//  teste-Sturdle
//
//  Created by found on 13/02/25.
//

import SwiftUI

struct GoButtonView: View {
    var body: some View {
        
        NavigationLink(destination: RoutinesView().navigationBarBackButtonHidden(),
                       label: {
            LoginButtonView(buttonName: "Go",
                            firstColor: Color("greenSturdle"),
                            secondaryColor: Color("greenSturdle"),
                            terciaryColor: Color("blueSturdle"))
        })
    }
}

struct CancelButtonView: View {
    var body: some View {
        NavigationLink(destination: WelcomeView().navigationBarBackButtonHidden(), label:{
            LoginButtonView(buttonName: "Cancel",
                            firstColor: Color("lightGray"),
                            secondaryColor: Color("lightGray"),
                            terciaryColor: Color("darkGray"))
        })
    }
}

#Preview {
    GoButtonView()
    CancelButtonView()
}
