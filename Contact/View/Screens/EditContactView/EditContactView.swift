//
//  EditContactView.swift
//  Contact
//
//  Created by Rafael Gonzaga on 01/08/23.
//

import SwiftUI

struct EditContactView: View {
    @State private var draft: Contact = TestData.contact
    @Environment(\.presentationMode) private var presentationMode
    @EnvironmentObject private var stateController: StateController
        
    var body: some View {
        List {
            RoundImage(image: draft.photo)
            EditableRowView(title: "Name", text: $draft.name)
            EditableRowView(title: "Position", text: $draft.position)
            EditableRowView(title: "Email", text: $draft.email)
            EditableRowView(title: "Phone", text: $draft.phone)
        }
        .navigationTitle("Edit Contact")
        .onAppear { draft = stateController.contact }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Cancel", action: cancel)
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Save", action: save)
            }
        }
    }
}

extension EditContactView {
    func save() {
        stateController.contact = Contact(
            photo: draft.photo,
            name: draft.name,
            position: draft.position,
            email: draft.email,
            phone: draft.phone)
        presentationMode.wrappedValue.dismiss()
    }
    
    func cancel() {
        presentationMode.wrappedValue.dismiss()
    }
}
    
struct EditContactView_Previews: PreviewProvider {
    static let contact = TestData.contact
    
    static var previews: some View {
        Group {
            EditableRowView(title: "Name", text: .constant(contact.name))
                .previewLayout(.sizeThatFits)
        }
    }
}
