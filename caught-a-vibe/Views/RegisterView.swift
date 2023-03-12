//
//  RegisterView.swift
//  caught-a-vibe
//
//  Created by Hunter Newton on 3/11/23.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var session: SessionManager
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {

        VStack {
            Text("Sign Up")
                .font(Font.custom("DancingScript-Medium", size: 64))
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            TextField("Email", text: $email)
                .frame(height: 32)
            SecureField("Password", text: $password)
                .frame(height: 32)
                .padding(.bottom, 20)
            Button(action: { session.signup(email: email, password: password) }) {
                Text("Start vibin'")
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
