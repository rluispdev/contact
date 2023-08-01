//
//  EditableRowView.swift
//  Contact
//
//  Created by Rafael Gonzaga on 01/08/23.
//

import SwiftUI

struct EditableRowView: View {
    let title: String
    @Binding var text: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0.0) {
            Text(title)
                .font(.footnote)
                .bold()
            TextField("", text: $text)
        }
        .padding(.top, 8.0)
        
    }
}

//struct EditableRowView_Previews: PreviewProvider {
//    static let contact = TestData.contact
//    
//    static var previews: some View {
//        EditableRowView(title: "Name", text: .constant(contact.name))
//            .previewLayout(.sizeThatFits)
//    }
//}
