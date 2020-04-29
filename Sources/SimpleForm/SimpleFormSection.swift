//
//  SimpleFormSection.swift
//  SimpleForm
//
//  Created by JoeShon Monroe on 4/26/20.
//  Copyright © 2020 JoeShon Monroe. All rights reserved.
//

import SwiftUI

public struct SimpleFormSection: View, Identifiable {
    public var id = UUID()
    @ObservedObject public var model:SimpleFormSectionModel = SimpleFormSectionModel()
    
    public init() {
        
    }
    
    public var body: some View {
        Section {
            ForEach(self.model.fields, id: \.id) { field in
                field
            }
        }.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}

//struct SimpleFormSection_Previews: PreviewProvider {
//    static var previews: some View {
//        SimpleFormSection()
//    }
//}
