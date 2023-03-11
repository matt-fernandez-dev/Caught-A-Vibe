//
//  SessionManager.swift
//  caught-a-vibe
//
//  Created by Hunter Newton on 3/10/23.
//

import Foundation
import SwiftUI
import Firebase

class SessionManager: NSObject, ObservableObject {
    
    @Published var loggedUser: User?
    static let shared = SessionManager()
    private let auth = Auth.auth()
    
    var handle : AuthStateDidChangeListenerHandle?
    
    override private init() {
        loggedUser = auth.currentUser
        super.init()
        handle = auth.addStateDidChangeListener(authStateChanged)
    }
    
    private func authStateChanged(with auth: Auth, user: User?) {
        guard user != self.loggedUser else { return }
        self.loggedUser = user
    }
        
    func logout() {
        do {
            try Auth.auth().signOut()
        } catch(let error) {
            debugPrint(error.localizedDescription)
        }
    }
    
    func unbind() {
        if let handle = handle {
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }
    
    deinit {
        unbind()
    }
    
}
