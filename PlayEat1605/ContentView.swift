//
//  ContentView.swift
//  PlayEat1605
//
//  Created by Apprenant54 on 16/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Jeu", systemImage: "dice.fill")
                }
            
            RecetteList()
                .tabItem {
                    Label("Recettes", systemImage: "book")
                }
            Classements()
                .tabItem {
                    Label("Classement", systemImage: "rosette")
                }
            AmisList(searchText: "")
                .tabItem {
                    Label("Amis", systemImage: "person.3.fill")
                }
            
            MonProfilView()
                .tabItem {
                    Label("Profil", systemImage: "person.circle.fill")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
