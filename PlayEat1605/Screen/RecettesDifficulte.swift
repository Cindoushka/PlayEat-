//
//  RecettesDifficulte.swift
//  PlayEat1605
//
//  Created by Apprenant54 on 17/05/2022.
//

import SwiftUI

var listDifficiles = recettes.sorted(by: {$0.complexite.rawValue < $1.complexite.rawValue })

struct RecettesDifficulte: View {
    var body: some View {

        List(listDifficiles) { recette in
            
            NavigationLink(destination: {
                RecetteDetail(recette: recette)
            }, label: {
                Image(recette.imageRecette)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                VStack {
                    HStack(alignment: .center){
                        Text("Niveau:")
                        Text(recette.complexite.rawValue)
                    }
                    .foregroundColor(.gray)
                    .frame(width: 200)
                    .padding(5)
                    Text(recette.nomRecette)
                     .foregroundColor(.accentColor)
                     .frame(width: 200)

                    
                }
                .foregroundColor(.accentColor)

                
            })
         
     }
        
    }
}

struct RecettesDifficulte_Previews: PreviewProvider {
    static var previews: some View {
        RecettesDifficulte()
    }
}
