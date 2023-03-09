//
//  ContentView.swift
//  caught-a-vibe
//
//  Created by Matthew Fernandez on 3/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome! Please enjoy catching vibes in our new application.")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
