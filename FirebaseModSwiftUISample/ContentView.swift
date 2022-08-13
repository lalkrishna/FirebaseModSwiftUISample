//
//  ContentView.swift
//  FirebaseModSwiftUISample
//
//  Created by Lal Krishna on 13/08/22.
//

import SwiftUI
import MyFeature1
import FirebaseTools

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            
            Button {
                FirebaseTools.set(userID: "0", userName: "Lk")
                MyFeature1().doSomethig()
            } label: {
                Text("Login")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
