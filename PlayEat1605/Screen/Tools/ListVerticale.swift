//
//  ListVerticale.swift
//  PlayEat1605
//
//  Created by Cindy Bajoni on 07/07/2022.
//

import SwiftUI

struct ListVerticale: View {
    
    var friend: Amis
    var body: some View {

            
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Image(friend.photoAmis)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 80, height: 80)
                            .clipped()
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                        
                        VStack(alignment: .leading, spacing: -8) {
                            Text(friend.name)
                                .font(.title2)
                                .foregroundColor(.accentColor)
                                .bold()
                            
                            if friend.conversation.isEmpty {
                                Text("Lancez la discussion avec \(friend.name)")
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.leading)
                                    .frame(minWidth: 40, idealWidth: .infinity, maxWidth: 150, minHeight: 40, idealHeight: 40, maxHeight: 40, alignment: .leading)
                            } else {
                            Text(friend.conversation[0])
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.leading)
                                    .frame(minWidth: 40, idealWidth: .infinity, maxWidth: 150, minHeight: 40, idealHeight: 40, maxHeight: 40, alignment: .leading)
                            }
                }
            }
        }
                .padding(.horizontal, 6)
                .padding(.vertical, 2)
    }
}

struct ListVerticale_Previews: PreviewProvider {
    static var previews: some View {
        ListVerticale(friend: listAmis[0])
    }
}
