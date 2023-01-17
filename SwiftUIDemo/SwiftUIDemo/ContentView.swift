//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Sishpal on 16/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name : String = String()
    @State private var password : String = String()

    var body: some View {
        VStack {
            Text("Login").font(.largeTitle).padding()
            Image(systemName: "lock").frame(width: 200,height: 100,alignment: .center).foregroundColor(.blue)
                .foregroundColor(.accentColor).padding()
            Text("Please enter username (more than 4 characters) and password (more than 5 characters)").underline(pattern: .dot, color: .gray).fontWeight(.thin).padding(20)
            TextField("username", text: $name).bold().padding().border(.blue)
            SecureField("password", text: $password).padding().border(.blue)
            Button(action: {
                print("login button clicked")
                print(name,password)
                
            }, label: {
                Text("Login").bold()
            }).border(.background).padding().disabled(name.count < 4 || password.count < 5)
         }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
