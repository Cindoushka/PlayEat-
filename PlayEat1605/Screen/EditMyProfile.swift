//
//  EditMyProfile.swift
//  PlayEatFinal
//
//  Created by Apprenant54 on 13/05/2022.
//

import SwiftUI

struct EditMyProfile: View {
    
    @State private var userPsedo: String = profilUser.monNom
    @State private var userPicture: String = profilUser.maPhotoDeProfil
    @State private var userCov: String = profilUser.photoDeCouverture
    @State private var userBio: String = profilUser.commentaire
    @State var offset: CGFloat = 0
    
    @Environment(\.dismiss) var dismiss

    //    func uploadImage() {
    //
    //        guard let inputImage = userPicture else {return}
    //
    //        userPicture = inputImage
    //
    //    }
    //
    //    func errorCheck() {
    //        is userPsedo.trimmingCharacters(in: .whitespaces).isEmpty
    //
    //        return Text("Merci de renseigner un pseudo ")
    //
    //    }
    //    return nil
    //
    
    
    var body: some View {
        
        NavigationView{
            VStack(spacing: 15) {
                
                
                Text("Éditer mon Profil")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                    .shadow(radius: 20)
                //            // Header view
                //            GeometryReader{proxy -> AnyView in
                //                // Sticky header
                //                let minY = proxy.frame(in: .global).minY
                //
                //                DispatchQueue.main.async {
                //                    self.offset = minY
                //                }
                //                return AnyView(
                VStack {
                    
                    ZStack {
                        // Banner
                        Image(profilUser.photoDeCouverture)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                            .shadow(radius: 10)
                            .padding(30)
                        
                        //                    })
                        
                        
                        Image(profilUser.maPhotoDeProfil)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .shadow(color: .accentColor, radius: 6)
                            .padding(5)
                            .background(Color.white)
                            .clipShape(Circle())
                            .padding(.top,150)
                    }
                    TextField(
                        "Pseudo",
                        text: $userPsedo
                    )
                    .foregroundColor(.accentColor)
                    .padding(.horizontal,35)
                    .padding(.bottom)
                    .disableAutocorrection(true)
                    .shadow(radius: 10)
                    
                    TextField(
                        "Bio",
                        text: $userBio
                    )
                    .foregroundColor(.accentColor)
                    .disableAutocorrection(true)
                    .padding(.horizontal,35)
                    .shadow(radius: 10)
                }
                .textFieldStyle(.roundedBorder)
                
                Spacer()
                
                Button("Valider") {
                    dismiss()
                }
                .font(.title)
                        .padding(.vertical,15)
                        .padding(.horizontal)
                        .background(
                            
                            Capsule()
                                .stroke(Color.accentColor, lineWidth: 1.5)
                        )
                     
                
                Spacer()
            }
        }
    }
    
}
struct EditMyProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditMyProfile()
    }
}

