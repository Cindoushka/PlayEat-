//
//  RecetteList.swift
//  PlayEat1605
//
//  Created by Ayoub ABARJI on 17/05/2022.
//

import SwiftUI

var recettesAlpha = recettes.sorted(by: {$0.nomRecette < $1.nomRecette })


struct RecetteList: View {
    @State var selectedButton : Int = 0
    
    var body: some View{
        NavigationView{
//            List(recettes) { recette in
            VStack {
                Picker(selection: $selectedButton, label: Text("")) {
                    Text("Durée").tag(1)
                    Text("Difficulé").tag(2)
                    Text("Pays").tag(3)
                }
                .pickerStyle(.segmented)
                
             
//                Text("\(selectedButton)")
                
                HStack {
                        
    //                    Text(recettes)
    //                        .foregroundColor(.accentColor)
    //                    Spacer()
    //                    Text("\(recettes)")
    //                        .foregroundColor(.pink)
                        
    //                }
                    switch selectedButton {
                    case 3 :
                        RecettesPays()
                    case 2:
                        RecettesDifficulte()
                    case 1:
                        RecetteDuree()
                    default:
                List(recettesAlpha) { recette in
                    
                    NavigationLink(destination: {
                        RecetteDetail(recette: recette)
                    }, label: {
                        Image(recette.imageRecette)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .shadow(color: .gray, radius: 5, x: 5, y: 5)
                        Text(recette.nomRecette)
                            
                            
                    })
                }
                    }
                }
                .navigationTitle("")
                .toolbar {
                    HStack {
                        Spacer()
                        Text("Mes Recettes")
                            .font(.system(size: 30))
                            .foregroundColor(.accentColor)
                            .shadow(radius: 5)
                            .padding(.top)
                    }
                }
    //                    Spacer()
                        
                }
            } .foregroundColor(.accentColor)
    }
       

}


struct RecetteList_Previews: PreviewProvider {
    static var previews: some View {
        RecetteList()
    }
}
