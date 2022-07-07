//
//  AmisList.swift
//  PlayEatFinal
//
//  Created by Apprenant54 on 16/05/2022.
//

import SwiftUI

struct AmisList: View {
    var body: some View {
           NavigationView{
               List(listAmis) { friend in
                   NavigationLink(destination: {
                       AmisChats(friend: friend)
                   }, label: {
                       HStack{
                       Image(friend.photoAmis)
                               .resizable()
                               .scaledToFill()
                               .frame(width: 50, height: 50)
                               .clipShape(Circle())
                               .shadow(radius:5)
                       Text(friend.name)
                               .foregroundColor(Color("purplelight"))
                               .bold()

                       }
                   })



               
               }
//               .padding(.top)
               .navigationBarTitle("")
               .toolbar {
                   HStack{
                       Spacer()
                       Text("Mes Amis")
                           .font(.system(size: 30))
                           .foregroundColor(.accentColor)
                           .shadow(radius: 5)
                       Spacer()
                       Button(action: {
//                           MonProfilView()
                           
                       }, label: {
                           Image(profilUser.maPhotoDeProfil)
                               .resizable()
                               .scaledToFill()
                               .frame(width: 60, height: 60)
                               .clipShape(Circle())
                               .shadow(color: .accentColor, radius: 6)
                               .padding(5)
                               .background(Color.white)
                               .clipShape(Circle())

                       })
                      
                   }
                   .padding(.top, 25)
                   
               }
           }




       }
   }


   struct AmisList_Previews: PreviewProvider {
       static var previews: some View {
           AmisList()
       }
   }
