//
//  Home.swift
//  PlayEat1605
//
//  Created by Apprenant54 on 18/05/2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("home")
                    .resizable()
            }.navigationTitle("")
                .toolbar {
                    HStack {
                        Spacer()
                        Text("PlayEat!")
                            .font(.system(size: 50))
                            .foregroundColor(.accentColor)
                            .shadow(radius: 5)
                            .padding(.top, 40)
                        Spacer().frame(width: 90)
                    }
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
