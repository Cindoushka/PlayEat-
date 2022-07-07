//
//  MonProfil.swift
//  PlayEatFinal
//
//  Created by Apprenant54 on 11/05/2022.
//

import SwiftUI

enum ViewButton {
    case favoris
    case recette
    case photo
}

struct MonProfilView: View {
    @State var offset: CGFloat = 0
    @State var selectedTab: ViewButton = .favoris
    
    
    //Pour le Dark Mode
    
    @State var currentTab = "Recettes"
    
    //Pour l'animation de slide
    @Namespace var animation
    
    @State var tabBarOffset: CGFloat = 0
    
    @State var getTittle: CGFloat = 0
    
    @State private var showingSheet = false
    
    var body: some View {
//        NavigationView {

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                    
                    // Header view
                    GeometryReader{proxy -> AnyView in
                        // Sticky header
                        let minY = proxy.frame(in: .global).minY
                        
                        DispatchQueue.main.async {
                            self.offset = minY
                        }
                        return AnyView(
                            ZStack {
                                // Banner
                                Image(profilUser.photoDeCouverture)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: getRect().width, height: minY > 0 ? 180 + minY : 180, alignment: .center)
                                    .cornerRadius(0)
                                
                                BlurView()
                                    .opacity(blurViewOpacity())
                                
                                // title view
                                HStack {
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "chevron.backward")
                                    }
                                    .padding(.leading)
                                    Spacer()
                                    VStack(spacing: 5) {
                                        Text(profilUser.monNom)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                        
                                        Text("\(profilUser.points) miam's")
                                            .foregroundColor(.white)
                                    }
                                    .padding(.trailing)
                                    
                                    Spacer()
                                    
                                }
                                // to slide from bottom added extra 60 (120)
                                .offset(y: getTittle > 100 ? 120 : getTittleTextOffset())
                                .opacity(getTittle < 100 ? 1 : 0)
                            }
                                .clipped()
                            // Stretchy header
                                .frame(height: minY > 0 ? 180 + minY : nil)
                                .offset(y: minY > 0 ? -minY : -minY < 80 ? 0 : -minY - 80)
                        )
                    }
                    .frame(height: 180)
                    .zIndex(1)
                    // PhotoDeProfil

                    VStack {

                        HStack {
                            
                            Image(profilUser.maPhotoDeProfil)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .shadow(color: .accentColor, radius: 6)
                                .padding(5)
                                .background(Color.white)
                                .clipShape(Circle())
                                .offset(x: 15, y: offset < 0 ? getOffset() - 20 : -20)
                                .scaleEffect(getScale())
                            
                            Spacer()
//                            NavigationLink(destination: EditMyProfile()) {
                            Button("Éditer mon profil") {
                                showingSheet.toggle()
                            }
                                    .padding(.vertical,15)
                                    .padding(.horizontal)
                                    .foregroundColor(.accentColor)
                                    .background(
                                        
                                        Capsule()
                                            .stroke(Color.accentColor, lineWidth: 1.5)
                                    )
                                    .padding(.horizontal)
                                    .padding(.trailing,15)
                                    .sheet(isPresented: $showingSheet, content: {EditMyProfile()})
//                            }
                        }
                        .padding(.top,-30)
                        .padding(.bottom,-20)
                        
                        
                        // Profile Data
                        
                        VStack{
                            
                            
                            VStack(alignment: .center, spacing: 8) {
                                
                                Text(profilUser.monNom)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                Text("\(profilUser.points) miam's")
                                    .foregroundColor(.gray)
                                
                            }
                            .padding(.bottom,5)
                            
                            
                            VStack(alignment: .leading, spacing: 8, content: {
                                
                                Text(profilUser.commentaire)
                                    .fontWeight(.thin)
                                    .padding([.leading, .trailing])
                                
                                HStack(spacing: 5) {
                                    
                                    Text("\(profilUser.nmbreDAmis)")
                                        .foregroundColor(.accentColor)
                                        .fontWeight(.semibold)
                                    
                                    Text("amis")
                                        .foregroundColor(.gray)
                                        .padding(.trailing,15)
                                    
                                    
                                    Text("\(profilUser.nmbreRecettesRealisees)")
                                        .foregroundColor(.accentColor)
                                        .fontWeight(.semibold)
                                    
                                    Text("recettes réalisées")
                                        .foregroundColor(.gray)
                                    
                                    
                                }
                                .padding(.leading,25)
                                .padding(.bottom,5)
                                
                                HStack(alignment: .center, spacing: 2){
                                    
                                    
                                    if profilUser.classement == 1 {
                                        
                                        Text("\(profilUser.classement)ère place")
                                            .foregroundColor(.yellow)
                                            .fontWeight(.heavy)
                                            .shadow(radius: 5)
                                            .padding(.leading,140)
                                            .padding(5)
                                        
                                        Image(systemName: "crown")
                                            .foregroundColor(.yellow)
                                            .shadow(radius: 5)
                                        
                                        
                                    } else if profilUser.classement == 2 {
                                        
                                        Text("\(profilUser.classement)ème place")
                                            .foregroundColor(.gray)
                                            .fontWeight(.heavy)
                                            .shadow(radius: 5)
                                            .padding(.leading,140)
                                            .padding(5)
                                        
                                        Image(systemName: "crown")
                                            .foregroundColor(.gray)
                                            .shadow(radius: 5)
                                        
                                        
                                    } else if profilUser.classement == 3 {
                                        
                                        Text("\(profilUser.classement)ème place")
                                            .foregroundColor(.orange)
                                            .fontWeight(.heavy)
                                            .shadow(radius: 5)
                                            .padding(.leading,140)
                                            .padding(5)
                                        
                                        Image(systemName: "crown")
                                            .foregroundColor(.orange)
                                            .shadow(radius: 5)
                                        
                                        
                                        
                                        
                                    } else {
                                        
                                        
                                        Text("\(profilUser.classement)ème place")
                                            .foregroundColor(.gray)
                                            .fontWeight(.thin)
                                            .padding(.leading,140)
                                            .padding(5)
                                        
                                        Image(systemName: "rosette")
                                            .foregroundColor(.gray)
                                        
                                    }
                                    
                                }
                                
                            })
                            
                        }
                        .overlay(
                            
                            GeometryReader{proxy -> Color in
                                
                                let minY = proxy.frame(in: .global).minY
                                
                                DispatchQueue.main.async {
                                    self.getTittle = minY
                                }
                                
                                return Color.clear
                            }
                                .frame(width: 0, height: 0)
                            ,alignment: .top
                        )
                        
                        
                        // Custome Menu Segmenté
                        
                        VStack(spacing: 0){
                            ScrollView(.horizontal,showsIndicators: false) {
                                
                                HStack(spacing: 0){
                                    
                                    TabButton(title: "Favoris", currentTab: $currentTab, animation: animation, selectedTab: $selectedTab, buttonName: .favoris)
                                    
                                    TabButton(title: "Recettes réalisées", currentTab: $currentTab, animation: animation, selectedTab: $selectedTab, buttonName: .recette)
                                    
                                    TabButton(title: "Mes photos", currentTab: $currentTab, animation: animation, selectedTab: $selectedTab, buttonName: .photo)
                                    
                                    
                                }
                                
                            }
                            
                            
                            Divider()
                        }
                        
                        
                        .padding(.top,10)
                        .background(Color.white)
                        .offset(y: tabBarOffset < 90 ? -tabBarOffset + 90 : 0)
                        .overlay(
                            
                            GeometryReader { reader -> Color in
                                
                                let minY = reader.frame(in: .global).minY
                                
                                
                                DispatchQueue.main.async {
                                    
                                    self.tabBarOffset = minY
                                }
                                return Color.clear
                                
                            }
                            
                                .frame(width: 0, height: 0)
                            
                            
                            ,alignment: .top
                        )
                        .zIndex(1)
                        //                .zIndex(-offset > 80 ? 0 : 1)
                        
                        
                        // Sample Favoris
                        
                        
                        
                        VStack {
                            switch selectedTab {
                            case .favoris:
                                FavorisRecettes()
                                    .padding(.bottom,5)
                                Divider()
                                FavorisAmi()
                            case .recette:
                                RecettesRealisees()
                            case .photo:
                                MesPhotosCuisine()
                                
                            }
                            
                        }
                        .padding(.top)
                        .zIndex(0)
                    }
                    //            .padding(.horizontal)
                    
                    //Faire passer la photo derrière la bannière
                    .zIndex(-offset > 80 ? 0 : 1)
                }
            }
            .ignoresSafeArea(.all, edges: .top)
        }
//        .navigationBarHidden(true)
//    }
    
    
    func getTittleTextOffset() -> CGFloat {
        
        let progress = 20 / getTittle
        
        let offset = 60 * (progress > 0 && progress <= 1 ? progress : 1)
        
        return offset
    }
    
    func getOffset() -> CGFloat {
        
        let progress = (-offset / 80) * 20
        
        return progress <= 20 ? progress : 20
    }
    
    func getScale() -> CGFloat {
        
        let progress = -offset / 80
        let scale = 1.8 - (progress < 1.0 ? progress : 1)
        
        return scale < 1 ? scale : 1
    }
    
    func blurViewOpacity() -> Double {
        
        let progress = -(offset + 80) / 150
        
        return Double(-offset > 80 ? progress : 0)
    }
    
    
}



struct MonProfil_Previews: PreviewProvider {
    static var previews: some View {
        MonProfilView()
    }
}


// Extended View to get Screen Size

extension View {
    
    func getRect() ->  CGRect {
        
        return UIScreen.main.bounds
    }
}

// Tab Button

struct TabButton: View {
    
    var title: String
    @Binding var currentTab: String
    var animation: Namespace.ID
    @Binding var selectedTab: ViewButton
    var buttonName: ViewButton
    
    var body: some View {
        
        Button(action: {
            withAnimation{
                currentTab = title
            }
            selectedTab = buttonName
            
        }, label: {
            
            LazyVStack(spacing: 12){
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(currentTab == title ? .accentColor : .secondary)
                    .padding(.horizontal)
                
                if currentTab == title{
                    
                    Capsule()
                        .fill(Color.accentColor)
                        .frame(height: 1.2)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                    
                    
                } else {
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 1.2)
                }
            }
        })
    }
}

