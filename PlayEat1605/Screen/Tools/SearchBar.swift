//
//  SearchBar.swift
//  PlayEat1605
//
//  Created by Cindy Bajoni on 07/07/2022.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var search : String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.gray.opacity(0.24))
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(.systemGray))
                TextField("Recherche", text: $search)
                Spacer()
                Image(systemName: "mic.fill")
                    .foregroundColor(Color(.systemGray))
            }
            .padding(.horizontal)
        }
        .frame(width: 358, height: 36)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(search: .constant(""))
    }
}
