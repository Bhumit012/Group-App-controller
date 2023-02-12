//
//  ContentView.swift
//  Group App Main
//
//  Created by Bhumit Muchhadia on 2023-01-08.
//

import SwiftUI

struct ContentView: View {
    @State private var seachText = ""
    
    var body: some View {
        VStack {
            TextField("URL",
                      text: $seachText)
            .padding(.horizontal, 20)
            .border(.gray)
            .frame(idealHeight: 40)
            .onChange(of: seachText) { newValue in
                let defaults = UserDefaults(suiteName: "group.com.PS.GroupAppMain")
                
                defaults?.set(newValue, forKey: "urlPS")
            }
        }
        .padding(.horizontal, 10)
        .foregroundColor(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
