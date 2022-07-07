//
//  Models.swift
//  PlayEat1605
//
//  Created by Apprenant54 on 16/05/2022.
//


import Foundation
import SwiftUI


enum Pays: String {
    case france = "France"
    case maroc = "Maroc"
    case cameroun = "Cameroun"
    case italie = "Italie"
    case benin = "Bénin"
    
    var drapeau: (name: String, image: String) {
            switch self {
            case .france:
                return ("France", "🇫🇷")
            case .maroc:
                return ("Maroc", "🇲🇦")
            case .cameroun:
                return ("Cameroun", "🇨🇲")
            case .italie:
                return ("Italie","🇮🇹")
            case .benin:
                return ("Benin", "🇧🇯") }
        }
    
}

enum Ustensiles: String {
    case fouet = "Fouet"
    case couteau = "Couteau"
    case poele = "Poêle"
    case louche = "Louche"
    case saladier = "Saladier"
    case balance = "Balance de cuisine"
    case casserole = "Casserole"
    case marmite = "Marmite"
    case robot = "Robot"
    case chinois = "Chinois"
    case mortier = "Mortier"
    case sauteuse = "Sauteuse"
    case passoire = "Passoire"
    case tajine = "Tajine"
    case mixeur = "Mixeur"
    case bol = "Bol"
    case four = "Four"
    case ecumoir = "Écumoire"
}

enum Medailles: String {
    case numero1 = "Cup"
    case numero2 = "Medal2"
    case numero3 = "Medal3"
    
    var icone: (name: String, image: Image) {
            switch self {
            case .numero1:
                return ("Champion.ne", Image("Cup"))
            case .numero2:
                return ("2ème place", Image("Medal"))
            case .numero3:
                return ("3ème place", Image("Medal"))
            }
    }
}


//
//enum Utilisateurs : String {
//    case ayoub = "Ayoub le King"
//    case wallen = "Wallen"
//    case samira = "Samira"
//    case julie = "Ju'Lille"
//    case arthur = "Arthur"
//    case eloi = "Wouiwoui59"
//    case mohamed = "Mohamed"
//}

struct Recette: Identifiable {
    var id = UUID()
    var nomRecette: String
    var ingredients: [Ingredients]
    var duree: Int
    var ustensiles: [Ustensiles]
    var consignes: [String]
    var pays: Pays
    var complexite: Niveau
    var imageRecette: String
}
enum Niveau: String {
    case facile = "1 Facile"
    case moyen = "2 Moyen"
    case difficile = "3 Difficile"
    
}
struct Ingredients: Hashable {
    var quantites: String
    var name: String
}

struct MesAmis {
    var noms: [String]
}

struct Chats {
    var noms: [String]
    var photos: [String]
    var debutMessage: String
}

struct ChatIndividuel {
    var photos:  String
    var photoCouverture: String
    var messages: String
}

struct Classement {
    var medailles: Medailles
    var noms: Amis
    var points: Int
}

struct MonProfil {
    var monNom: String
    var recettePreferee: [RecettesFavoris]
    var nmbreRecettesRealisees: Int
    var points: Int
    var classement: Int
    var nmbreDAmis: Int
    var recettesRealisees: [MesPhotosDeCuisine]
    var photoDeCouverture: String
    var maPhotoDeProfil: String
    var commentaire: String
}


struct  MesPhotos {
    var maPhoto: String
    var nmbreDeMiams: Int
    var recette: Recette
}

struct LeJeu {
    var photosPays: Image
}


struct Amis: Identifiable {
    var id = UUID()
    var name: String
    var point: Int
    var conversation: [String]
    var photoAmis: String 
}

enum BubllePosition {
case left
case right
}

