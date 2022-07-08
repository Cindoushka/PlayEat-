//
//  AmisList.swift
//  PlayEatFinal
//
//  Created by Apprenant54 on 16/05/2022.
//

import SwiftUI

struct AmisList: View {
    
    @State var searchText : String
    
    var searchResult: [Amis] {
                if searchText.isEmpty {
                    return listAmis
                } else {
                    return listAmis.filter { $0.name.lowercased().contains(searchText.lowercased()) }
                }
            }

    var body: some View {
           NavigationView{
               VStack(alignment: .center, spacing: 10) {
                   
                   Text("Mes Amis")
                       .foregroundColor(.accentColor)
                       .font(.title)
                       .fontWeight(.bold)
                   
                   SearchBar(search: $searchText)

                   HStack {
                       Text("Mes Amis")
                           .font(.system(size: 18))
                           .foregroundColor(.accentColor)
                           .fontWeight(.bold)
                           .padding(10)
                       Spacer()
                   }
                   ScrollView(.horizontal, showsIndicators: false){

                       HStack{
                           
                           ForEach(searchResult) { profil in
                               NavigationLink(destination: {
                                   ProfilAmis(friend: profil)
                               }, label: {
                   ListHorizontale(friend: profil)
                               })
                           }
                       }
                       .padding(.leading, 10)
                       .searchable(text: $searchText)

                   }
                   
                   HStack {
                       Text("Conversations")
                           .font(.system(size:18))
                           .foregroundColor(.accentColor)
                           .fontWeight(.bold)
                           .padding(10)
                       Spacer()
                   }
                   
                   ScrollView(.vertical, showsIndicators: false){

                       VStack{
                           
                           ForEach(searchResult) { profilB in
                               
                               NavigationLink(destination: {
                                   AmisChats(friend: profilB)
                               }, label: {
                               ListVerticale(friend: profilB)
                               })
                               Divider()
                           }
                           Spacer()
                       }
                       .padding(.top, 2)
                       .searchable(text: $searchText)

                   }
                   
                   
               }
               
               .navigationBarHidden(true)
           }

           


       }
   }


   struct AmisList_Previews: PreviewProvider {
       static var previews: some View {
           AmisList(searchText: "")
       }
   }
