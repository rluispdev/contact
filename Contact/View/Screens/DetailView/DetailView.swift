//
//  DetailView.swift
//  Contact
//
//  Created by Rafael Gonzaga on 01/08/23.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var stateController: StateController
    let contact = TestData.contact
    @State private var isSheetPresented = false
    
    var contatc: Contact { stateController.contact}
    var body: some View {
        List {
            HeaderView(photo: contact.photo, name: contact.name, position: contact.position)
                .frame(maxWidth: .infinity)
            RowView(label: "Email", text: contact.email, destination: URL(string: "mailto:\(contact.email)")!)
            RowView(label: "Phone", text: contact.phone, destination: URL(string: "tel://\(contact.phone)")!)
        }
        .listStyle(PlainListStyle())
        .toolbar {
            Button("Edit", action: { isSheetPresented = true })
        }
        .fullScreenCover(isPresented: $isSheetPresented) {
            NavigationStack {
                EditContactView()
            }
            .environment(\.colorScheme, .dark)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static let contact = TestData.contact
    static var previews: some View {
        Group {
            Group {
                HeaderView(photo: contact.photo, name: contact.name, position: contact.position)
                RowView(label: "Email", text: contact.email, destination: URL(string: "example.com")!)
            }
            .padding()
            .previewLayout(.sizeThatFits)
        }
    }
}



