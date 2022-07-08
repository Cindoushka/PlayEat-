//
//  RecettesRealisees.swift
//  PlayEatFinal
//
//  Created by Apprenant54 on 12/05/2022.
//

import SwiftUI

struct RecettesRealisees: View {
    

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        VStack{
            
            HStack {
                Text("  Recettes Réalisées")
                    .foregroundColor(.gray)
                Spacer()
            }
                
            
//            NavigationView{
            ScrollView {
                LazyVGrid(columns: columns, alignment: .center, spacing: 20) {
                    ForEach(recipeDone) { item in
                        
                        NavigationLink(destination: {RecetteDetail(recette: item )}, label: {
                            
                            VStack(spacing: 10) {
                                Image(item.imageRecette)
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .clipShape(Circle())
                                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                                
                                Text(item.nomRecette)
                                    .font(.subheadline)
                                    .bold()
                                    .foregroundColor(.accentColor)
                                    .multilineTextAlignment(.center)
                                
                            }
                        } )
  
                    }
                    .padding(.horizontal)
                }
               
            }
//            }
        }
    }
}

struct RecettesRealisees_Previews: PreviewProvider {
    static var previews: some View {
        RecettesRealisees()
    }
}
