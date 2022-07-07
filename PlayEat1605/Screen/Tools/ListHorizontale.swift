//
//  ListHorizontale.swift
//  PlayEat1605
//
//  Created by Cindy Bajoni on 07/07/2022.
//

import SwiftUI

struct ListHorizontale: View {
    
    var friend: Amis
    
    var body: some View {
        
        HStack {
                VStack {
                Image(friend.photoAmis)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                    .clipped()
                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                    
                    Text(friend.name)
                        .foregroundColor(.gray)
                        .fontWeight(.semibold)
                
            }
        }
    }
}

struct ListHorizontale_Previews: PreviewProvider {
    static var previews: some View {
        ListHorizontale(friend: listAmis[0])
    }
}
