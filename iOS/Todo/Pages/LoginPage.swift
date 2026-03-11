//
//  LoginPage.swift
//  Todo
//
//  Created by david thompson on 2/26/26.
//

import SwiftUI

struct LoginPage: View {
    @State var email: String = ""
    @State var password: String = ""
    @Binding var isLogedin: Bool

    var body: some View {
        VStack{
            Spacer()
            Text("My Todo List")
                .bold()
                .font(.largeTitle)
            Text("Created By David Thompson")
                .italic()
            ProgressView()
            
            Spacer()
            VStack(spacing: 40){
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
                
                Button{
                    isLogedin = true
                } label: {
                    Text("Login")                }
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    LoginPage(isLogedin: .constant(true))
}
