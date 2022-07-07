//
//  RecetteDuree.swift
//  PlayEat1605
//
//  Created by Apprenant54 on 18/05/2022.
//

import SwiftUI

var listDurees = recettes.sorted(by: {$0.duree < $1.duree })

struct RecetteDuree: View {
    var body: some View {
        List(listDurees) { recette in
            
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
                        Text("Durée:")
                        Text("\(recette.duree) minutes")
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

struct RecetteDuree_Previews: PreviewProvider {
    static var previews: some View {
        RecetteDuree()
    }
}
