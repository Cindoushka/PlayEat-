//
//  MesPhotosCuisine.swift
//  PlayEatFinal
//
//  Created by Apprenant54 on 12/05/2022.
//

import SwiftUI

struct MesPhotosCuisine: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        VStack{
            
            HStack {
                Text("  Mes Photos")
                    .foregroundColor(.gray)
                Spacer()
            }
                
            
            
            ScrollView {
                LazyVGrid(columns: columns, alignment: .center, spacing: 20) {
                    ForEach(myPictures) { item in
                        VStack(spacing: 10) {
                            Image(item.monNomDePhoto)
                                .resizable()
                                .frame(width: 150, height: 150)
                                .cornerRadius(25)
                                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                            
                            Text(item.nomDeLaRecette)
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(.accentColor)
                                .multilineTextAlignment(.center)
                            
                        }
                    }
                    .padding(.horizontal)
                }
               
            }
        }
    }
}

struct MesPhotosCuisine_Previews: PreviewProvider {
    static var previews: some View {
        MesPhotosCuisine()
    }
}
