//
//  RecetteDetail.swift
//  PlayEatFinal
//
//  Created by apprenant59 on 11/05/2022.
//

import SwiftUI

struct RecetteDetail: View {
    var recette: Recette
    var body: some View {
        
        ZStack{
        ScrollView(.vertical, showsIndicators: false) {
        VStack{
            
            
           
                Image(recette.imageRecette)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .padding()
                    .shadow(radius: 5)

                
                VStack(alignment:.center){
                    
                    
                    VStack{
                        HStack{
                            Text(recette.pays.drapeau.name)
                                .fontWeight(.heavy)
                                .foregroundColor(.gray)
                            Text(recette.pays.drapeau.image)
                                
                        }
                        Text("\(recette.complexite.rawValue)")
                            .fontWeight(.heavy)
                            .foregroundColor(.gray)
                            .padding(.bottom)
                        Spacer()
                        Spacer()
                        
                        
                    }
                    Text("Ustensiles")
                        .font(.title)
                        .foregroundColor(.accentColor)
                        .padding(.top,10)
                        .padding(5)
                    ForEach(recette.ustensiles, id: \.self) { ustensile in
                        Text(ustensile.rawValue)
                            .fontWeight(.thin)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Text("Ingredients")
                        .foregroundColor(.accentColor)
                        .font(.title)
                        .padding(.top,10)
                        .padding(5)
                    
                    ForEach(recette.ingredients, id: \.self) { ingre in
                        HStack {
                            Text(ingre.quantites)
                                .foregroundColor(.black)
                                .lineSpacing(5)

                            Text(ingre.name)
                                .fontWeight(.thin)
                                .foregroundColor(.black)
                                .lineSpacing(5)


                                
                        }
                    }
                    Spacer()
                    Text("Consignes")
                        .foregroundColor(.accentColor)
                        .font(.title)
                        .padding(.top,10)
                        .padding(5)
                        
                    
                    VStack(alignment: .leading) {
                        ForEach(recette.consignes, id: \.self){
                            consigne in
                            Text(consigne)
                                .foregroundColor(.black)
                                .padding(.all, 5)

                                
                        }
                    }
                    
                    
                }
            .padding()
            }
            
            
        }.navigationBarTitle(recette.nomRecette, displayMode: .inline)
        
        
        
        
    }
//        .background(Color("LightPink"))

}

}
struct RecetteDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecetteDetail(recette: recettes[0])
    }
}
