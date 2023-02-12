//
//  ContentView.swift
//  Group App Receiver
//
//  Created by Bhumit Muchhadia on 2023-01-09.
//

import SwiftUI
import UIKit

struct ContentView: View {
    let defaults = UserDefaults(suiteName: "group.com.PS.GroupAppMain")
    
    var body: some View {
        Button(action: {
            if let url = URL(string: "https://www." + (defaults?.string(forKey: "urlPS") ?? "")) {
                UIApplication.shared.openURL(url)
            }
        }) {
            Text("Open URL")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
