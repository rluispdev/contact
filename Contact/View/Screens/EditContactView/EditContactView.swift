//
//  EditContactView.swift
//  Contact
//
//  Created by Rafael Gonzaga on 01/08/23.
//

import SwiftUI

struct EditContactView: View {
    
    @State private var draft: Contact = TestData.contact
    
    var body: some View {
        List {
            RoundImage(image: draft.photo)
            EditableRowView(title: "Name", text: $draft.name)
            EditableRowView(title: "Position", text: $draft.position)
            EditableRowView(title: "Email", text: $draft.email)
            EditableRowView(title: "Phone", text: $draft.phone)
        }
    }
}

struct EditContactView_Previews: PreviewProvider {
    static let contact = TestData.contact
    
    static var previews: some View {
        Group {
            EditContactView()
            EditableRowView(title: "Name", text: .constant(contact.name))
                .previewLayout(.sizeThatFits)
        }
    }
}
