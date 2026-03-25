//
//  EditableTextFeald.swift
//  Todo
//
//  Created by david thompson on 2/26/26.
//

import SwiftUI

struct EditableTextFeald: View {
    @Binding var text: String
    @State var isEditing: Bool
    var body: some View {
        HStack{
            if(isEditing){
                TextField("", text: $text)
                Spacer()
                Image(systemName: "checkmark")
                    .font(.title)
                    .onTapGesture {
                        isEditing = false
                    }
                
            } else{
                Text(text)
                    .font(.title)
                Spacer()
                Image(systemName: "pencil.circle")
                    .font(.title)
                    .onTapGesture {
                        isEditing = true
                    }
            }
        }
        .padding()
    }
}

#Preview {
    @Previewable @State var text: String = "lorem ipsum"
    VStack{
        EditableTextFeald(text: $text, isEditing: false)
            .padding(.bottom, 40)
        EditableTextFeald(text: $text, isEditing: true)
    }
}
