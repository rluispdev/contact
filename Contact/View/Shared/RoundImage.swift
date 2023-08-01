//
//  RoundImage.swift
//  Contact
//
//  Created by Rafael Gonzaga on 31/07/23.
//

import SwiftUI

struct RoundImage: View {
    
    let image: UIImage
    
    var body: some View {
        
    Image(uiImage: image)

            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black,lineWidth: 0.5))
            .frame(width: 200, height: 200)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 24)
  
    }
}

struct RoundImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundImage(image: UIImage(imageLiteralResourceName: "bruce"))
            .padding()
            .previewLayout(.sizeThatFits)
            
    }
}
