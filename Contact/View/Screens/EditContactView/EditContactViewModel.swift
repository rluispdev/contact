//
//  EditContactViewModel.swift
//  Contact
//
//  Created by Rafael Gonzaga on 01/08/23.
//

//import Foundation
//import SwiftUI
//
//class EditContactViewModel: ObservableObject {
//    @EnvironmentObject private var stateController: StateController
//    @Environment(\.presentationMode) private var presentationMode
//    @Published var draft: Contact = TestData.contact
//    
//    func save() {
//        stateController.contact = Contact(
//            photo: draft.photo,
//            name: draft.name,
//            position: draft.position,
//            email: draft.email,
//            phone: draft.phone)
//        presentationMode.wrappedValue.dismiss()
//        
//    }
//    
//    func cancel() {
//        presentationMode.wrappedValue.dismiss()
//    }
//}
