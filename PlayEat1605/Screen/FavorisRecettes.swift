//
//  FavorisRecettes.swift
//  PlayEatFinal
//
//  Created by Apprenant54 on 12/05/2022.
//

import SwiftUI

struct FavorisRecettes: View {
    var body: some View {

                VStack(alignment: .leading) {

                    Text("  Recettes Favoris")
                        .foregroundColor(.gray)
                        
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                    
                        HStack(alignment: .firstTextBaseline) {
                            ForEach(favoriteRecipes) { item in
                                VStack(spacing: 5) {
                                    Image(item.recipePhoto)
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                        .clipShape(Circle())
                                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
            
                                    
                                    Text(item.recipeName)
                                        .font(.caption)
                                        .foregroundColor(.accentColor)
                                        .frame(width: 80)
                                        .multilineTextAlignment(.center)
                                        
                                }
                            }
                        }
                            
                    }
                    .padding(.leading)
                }
            }
        }


struct FavorisRecettes_Previews: PreviewProvider {
    static var previews: some View {
        FavorisRecettes()
    }
}
