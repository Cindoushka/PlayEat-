//
//  AmisChats.swift
//  PlayEatFinal
//
//  Created by Apprenant54 on 16/05/2022.
//

import SwiftUI
struct AmisChats: View {
var friend: Amis

@State var amisChat = ""

var body: some View {
    
    ZStack {
        
    
    VStack(alignment: .leading) {
        
        Spacer()
      
        ForEach(friend.conversation, id: \.self){ message in
            Text(message)
                .fontWeight(.bold)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
                .foregroundColor(.purple)
                
                
        }.padding(.horizontal)
    Text(amisChat)
        HStack{
            TextField("Tapez votre message...", text: $amisChat)
                .textFieldStyle(.roundedBorder)
            
            Button(action: {
                
            }, label: {
                Image(systemName: "paperplane.fill")
                    .font(.system(size: 30))
            })
        }.padding()
    }
    .navigationBarTitle("")
    .toolbar {
        HStack{
            Image(friend.photoAmis)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .shadow(radius: 5)
            Spacer()
            Text(friend.name)
                .font(.title)
                .foregroundColor(.red)
            Spacer()
            Image(systemName: "video.fill")
                .foregroundColor(.purple)
            Image(systemName: "phone.fill")
                .foregroundColor(.purple)

        }
    }.padding()
}
        .background(Color("LightPink"))
    
}
    
}
    

struct AmisChats_Previews: PreviewProvider {
static var previews: some View {
    AmisChats(friend: listAmis[0])
}
}
