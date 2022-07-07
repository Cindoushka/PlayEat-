//
//  StructFav.swift
//  PlayEat1605
//
//  Created by Apprenant54 on 16/05/2022.
//

import Foundation

struct AmisFavoris: Identifiable {
    let id = UUID()
    let friendName: String
    let friendPhoto: String
}

let favoriteFriends = [
    AmisFavoris(friendName: "Ayoub", friendPhoto: "ayoub2"),
    AmisFavoris(friendName: "Wallen", friendPhoto: "wallen"),
    AmisFavoris(friendName: "Samira", friendPhoto: "samira"),
    AmisFavoris(friendName: "Ju'Lille", friendPhoto: "julie")
]


struct RecettesFavoris: Identifiable {
    let id = UUID()
    let recipeName: String
    let recipePhoto: String
}

let favoriteRecipes = [
    RecettesFavoris(recipeName: recettes[4].nomRecette, recipePhoto: recettes[4].imageRecette),
    RecettesFavoris(recipeName: recettes[6].nomRecette, recipePhoto: recettes[6].imageRecette),
    RecettesFavoris(recipeName: recettes[7].nomRecette, recipePhoto: recettes[7].imageRecette),
    RecettesFavoris(recipeName: recettes[0].nomRecette, recipePhoto: recettes[0].imageRecette)
]

struct RecettesRealiseesProf: Identifiable {
    let id = UUID()
    let recipeDoneName: String
    let recipeDonePhoto: String
}

let recipeDone = [recettes[0], recettes[1], recettes[2], recettes[3], recettes[4], recettes[5], recettes[6], recettes[7]]
//let favoriteRecipes = [recettes[0], recettes[1], recettes[2], recettes[3]]


struct MesPhotosDeCuisine: Identifiable {
    let id = UUID()
    let monNomDePhoto: String
    let nomDeLaRecette: String
}

let myPictures = [
    MesPhotosDeCuisine(monNomDePhoto: "mescrepes", nomDeLaRecette: recettes[0].nomRecette),
    MesPhotosDeCuisine(monNomDePhoto: "mescarbo", nomDeLaRecette: recettes[4].nomRecette),
    MesPhotosDeCuisine(monNomDePhoto: "monbissap", nomDeLaRecette: recettes[1].nomRecette),
    MesPhotosDeCuisine(monNomDePhoto: "mongateau", nomDeLaRecette: recettes[2].nomRecette),
    MesPhotosDeCuisine(monNomDePhoto: "masauce", nomDeLaRecette: recettes[3].nomRecette),
]


