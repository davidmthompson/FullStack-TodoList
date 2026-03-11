//
//  ContentView.swift
//  Todo
//
//  Created by david thompson on 2/25/26.
//

import SwiftUI

enum Pages{
    case LOADING, LOGIN, HOME
}
struct ContentView: View {
    @State var PageSelected: Pages = .LOADING
    @State var isLogin: Bool = false
    var body: some View {
        VStack {
            switch(PageSelected){
            case .LOADING:
                LoadingPage()
            case .LOGIN:
                LoginPage( isLogedin: $isLogin)
            case .HOME:
                 HomePage(isLogedin: $isLogin)
            }
        }
        .padding()
        .onChange(of: isLogin){ _, newValue in
            if(isLogin){
                PageSelected = .HOME
            } else{
                PageSelected = .LOGIN
            }
                
            
        }
        .task{
            try? await Task.sleep(nanoseconds: 5_000_000_000)
            PageSelected = .LOGIN
        }
    }
}

#Preview {
    ContentView()
}
