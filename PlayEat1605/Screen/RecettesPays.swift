//
//  RecettesPays.swift
//  PlayEat1605
//
//  Created by Apprenant54 on 17/05/2022.
//

import SwiftUI


var listAlphabtPays = recettes.sorted(by: {$0.pays.drapeau.name < $1.pays.drapeau.name })

struct RecettesPays: View {
    
   var body: some View {

       List(listAlphabtPays) { recette in
           
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
                       Text(recette.pays.drapeau.name)
                       Text(recette.pays.drapeau.image)
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
                          

struct RecettesPays_Previews: PreviewProvider {
    static var previews: some View {
        RecettesPays()
    }
}

