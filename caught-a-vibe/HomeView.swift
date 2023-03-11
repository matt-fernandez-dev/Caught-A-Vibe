//
//  HomeView.swift
//  caught-a-vibe
//
//  Created by Hunter Newton on 3/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var session: SessionManager
    
    let user: String
    
    var body: some View {
        Text("Hello, \(user)!")
        Button(action: { session.logout() }) {
            Text("logout")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(user: "user")
    }
}
