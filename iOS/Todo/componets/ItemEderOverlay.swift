//
//  ItemEderOverlay.swift
//  Todo
//
//  Created by david thompson on 2/26/26.
//

import SwiftUI

struct ItemEderOverlay: View {
    
    @State var title: String = "Cats aNDdog"
    @State var desc: String = ""
    @State var selectedStatus: ItemStatus = .notStarted
    
    
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(
                        width: geo.size.width * 0.8,
                        height: geo.size.height * 0.6
                    )
                    .shadow(radius: 10)
                    .overlay{
                        EditorContent()
                    }
                
            }
        }
    }
    
    func EditorContent() -> some View{
        return VStack{
            EditableTextFeald(text: $title, isEditing: false)
            TextEditor(text: $desc)
            Picker("Status", selection: $selectedStatus){
                ForEach(ItemStatus.allCases, id: \.self){ status in
                    Text(status.rawValue)
                        .tag(status)
                }
            }
            Spacer()
            Button{
                
            }label: {
                Text("Finshed")
            }
            .padding()
        }
    }
}

#Preview {
    HomePage()
}
