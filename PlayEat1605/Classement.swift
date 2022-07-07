//
//  Classement.swift
//  PlayEat1605
//
//  Created by Ayoub ABARJI on 17/05/2022.
//

import SwiftUI

struct Classements: View {
    var listTriee = listeComplete.sorted  { $0.point > $1.point }
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){

            ForEach(listTriee) { friend in
                HStack {

//                    Spacer()
                    Image(friend.photoAmis)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .shadow(radius:5)
                        
                    Text(friend.name)
                        .font(.title2)
                        .foregroundColor(Color("purplelight"))
                        .frame(width: 200)
//                        .padding(.leading, 60)
//                    Spacer()
                    Text("\(friend.point)")
                        .font(.title2)
                        .foregroundColor(.gray)
//                        .padding(.trailing,60)
                }
            }
                Spacer()
                Spacer()
            }
            
            .navigationBarTitle("")
            .toolbar {
                VStack {
                    Spacer()
                    HStack{
                        Spacer()
                        Text("Classement")
                            .font(.system(size: 40))
                            .foregroundColor(.accentColor)
                            .shadow(radius: 5)
                        Spacer()
                        Button(action: {
                            
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

                }

            }
        }
    }
}

struct Classements_Previews: PreviewProvider {
    static var previews: some View {
        Classements()
    }
}
