//
//  LoadingPage.swift
//  Todo
//
//  Created by david thompson on 2/26/26.
//

import SwiftUI

struct LoadingPage: View {
    var body: some View {
        VStack{
            Text("My Todo List")
                .bold()
                .font(.largeTitle)
            Text("Created By David Thompson")
                .italic()
            ProgressView()
        }
    }
}

#Preview {
    LoadingPage()
}
