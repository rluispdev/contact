//
//  RowView.swift
//  Contact
//
//  Created by Rafael Gonzaga on 31/07/23.
//

import SwiftUI

struct RowView: View {
    
    let label: String
    let text: String
    let destination: URL
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.footnote)
                .bold()
            Link(text, destination: destination)
                .buttonStyle(BorderedButtonStyle())
        }
        .padding(.top, 4)
    }
}

struct RowView_Previews: PreviewProvider {
    static let contact = TestData.contact
      static var previews: some View {
          
          Group {
              
              if let url = URL(string: "example.com") {
             
                  RowView(label: "Email", text: contact.email, destination: url)
              } else {
                  Text("URL inválido")
              }
          }
          .padding()
          .previewLayout(.sizeThatFits)
          
      }
    
}
