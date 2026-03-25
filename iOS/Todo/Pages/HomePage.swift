//
//  HomePage.swift
//  Todo
//
//  Created by david thompson on 2/26/26.
//

import SwiftUI

struct HomePage: View {
    @State var itemEditing: TodoItem? = mockData.first
    @Binding var isLogedin: Bool

    var body: some View {
        VStack{
            HStack{
                Menu{
                    Button(role: .destructive){
                        isLogedin = false
                    }label: {
                        Label("Logout", systemImage: "rectangle.portrait.and.arrow.right" )
                        
                    }

                }label: {
                    Image(systemName: "person.circle")
                        .font(.title)
                        .bold()
                }
                Spacer()
                Image(systemName: "plus.circle")
                    .font(.title)
                    .bold()
                    .onTapGesture {
                        itemEditing = TodoItem(title: "", desc: "", itemStatus: ItemStatus(rawValue: "") ?? .notStarted)
                    }
            }
            .padding()
            
            List(mockData) { item in
                HStack{
                    Circle()
                        .frame(width: 40, height: 40)
                    Text(item.title)
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                .onTapGesture {
                    itemEditing = item
                }
            }
            
            Spacer()
        }.overlay{
            if itemEditing != nil{
                ItemEderOverlay(item: Binding(get:{
                    return itemEditing!
                }, set: {item in
                    itemEditing = item
                }
                                             ))
            }
            }
        }
    }


#Preview {
HomePage(isLogedin: .constant(true))
}
