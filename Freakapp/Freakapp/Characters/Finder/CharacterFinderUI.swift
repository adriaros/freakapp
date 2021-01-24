//
//  CharacterFinderUI.swift
//  Freakapp
//
//  Created by Adrià Ros on 24/1/21.
//  Copyright © 2021 adria.engineer.ios. All rights reserved.
//

import SwiftUI

struct CharacterFinderUI: View {
    var body: some View {
        Image(uiImage: UIImage.characterFinderBackgroundImage[.marvel]!)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .opacity(0.5)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CharacterFinderUI_Previews: PreviewProvider {
    static var previews: some View {
        CharacterFinderUI()
    }
}
