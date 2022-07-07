//
//  RecetteDetail.swift
//  PlayEatFinal
//
//  Created by apprenant59 on 11/05/2022.
//

import SwiftUI

struct RecetteDetail: View {
    
    var recette: Recette
    
    @Environment(\.dismiss) var dismiss

    @State private var selectedPicker : Int = 3
    
    var body: some View {
        
        VStack{
            
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.backward") // set image here
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.accentColor)
                            .font(.system(size:24))
                            .padding(8)
                        Spacer()
                    }
                    .padding(.leading, 16)
                    
                }
                Text(recette.nomRecette)
                    .foregroundColor(.accentColor)
                    .font(.title2)
                    .bold()
                    .frame(width: 340)
                                
            }
            Divider()
                
                
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20){
            
            
           
                Image(recette.imageRecette)
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .shadow(radius: 5)

                
                VStack(alignment:.center, spacing: 0){
                    
                    HStack{
                        
                        Image(systemName: "globe.europe.africa.fill")
                            .foregroundColor(.gray)
                        
                        Text(recette.pays.rawValue)
                            .foregroundColor(.gray)

                        
                        Divider().frame(width: 12)
                        
                        Image(systemName: "flame.fill")
                            .foregroundColor(.gray)
                        
                        Text(recette.complexite.rawValue)
                            .foregroundColor(.gray)

                        Divider().frame(width: 12)

                        Image(systemName: "timer")
                            .foregroundColor(.gray)

                        Text("\(recette.duree) mins")
                            .foregroundColor(.gray)

                    }
                    .padding()
                    .background(
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(Color("test"))
                        .frame(height: 44)
                    )
                    
                    Picker(selection: $selectedPicker, label: Text("")) {
                        Text("Ustensiles").tag(0)
                            
                        Text("Ingrédients").tag(1)
                
                    }
                    .frame(width: 300, height: 80)
                    .font(.title)
                    .pickerStyle(.segmented)
                    
                    switch selectedPicker {
                        
                    case 0:
                        VStack{
                        ForEach(recette.ustensiles, id: \.self) { ustensile in
                            Text(ustensile.rawValue)
                                .fontWeight(.thin)
                                .foregroundColor(.black)
                        }
                    }
                    case 1:
                        VStack {
                    
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
                        }
                        
                    default:
                        Text("")
                    }

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
                    .padding()
                    
                    
                }
            }
            
            
        }.navigationBarHidden(true)
        
        
        
        
    }

}

}
struct RecetteDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecetteDetail(recette: recettes[0])
    }
}
