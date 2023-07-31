//
//  HeaderView.swift
//  Contact
//
//  Created by Rafael Gonzaga on 31/07/23.
//

import SwiftUI

struct HeaderView: View {
    
    let photo: UIImage
    let name: String
    let position: String
    

    var body: some View {
        VStack {
            RoundImage(image: photo)
            Text(name)
                .font(.title)
                .bold()
            Text(position)
                .font(.body)
                .foregroundColor(.gray)
        }
        
        .padding(.bottom, 24)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(photo: UIImage(imageLiteralResourceName: "bruce"), name: "Bruce Wayne", position: "Wayne Enterprises")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
