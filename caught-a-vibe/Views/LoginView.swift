//
//  LoginView.swift
//  caught-a-vibe
//
//  Created by Hunter Newton on 3/10/23.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @EnvironmentObject var session: SessionManager
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Text("Catch a Vibe")
                .font(Font.custom("DancingScript-Medium", size: 64))
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            TextField("Email", text: $email)
                .frame(height: 32)
            SecureField("Password", text: $password)
                .frame(height: 32)
                .padding(.bottom, 20)
            Button(action: { session.login(email: email, password: password) }) {
                Text("Sign in")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
                    .contentShape(Capsule())
            }
            
            NavigationLink(destination: RegisterView()) {
                Text("Sign up")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
                    .contentShape(Capsule())
            }
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
