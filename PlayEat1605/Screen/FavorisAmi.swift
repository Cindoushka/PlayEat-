//
//  FavorisAmi.swift
//  PlayEatFinal
//
//  Created by Apprenant54 on 12/05/2022.
//

import SwiftUI

struct FavorisAmi: View {
    var body: some View {
        VStack (alignment: .leading){

            Text("  Amis Favoris")
                .foregroundColor(.gray)
                
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    ForEach(favoriteFriends) { item in
                        VStack(spacing: 5) {
                            Image(item.friendPhoto)
                                .resizable()
                                .frame(width: 90, height: 90)
                                .clipShape(Circle())
                                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                            
                            Text(item.friendName)
                                .font(.subheadline)
                                .foregroundColor(.accentColor)
                        }
                    }
                }
                    
            }
            .padding(.leading)

                
            
        
            
        }
    }
}



struct FavorisAmi_Previews: PreviewProvider {
    static var previews: some View {
        FavorisAmi()
    }
}
