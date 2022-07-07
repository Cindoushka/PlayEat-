//
//  BlurViewfin.swift
//  PlayEat1605
//
//  Created by Apprenant54 on 17/05/2022.
//

import Foundation
import SwiftUI

struct BlurView: UIViewRepresentable {
  
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterialDark))
        
        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}
