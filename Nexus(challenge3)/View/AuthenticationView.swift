//
//  AuthenticationView.swift
//  Nexus(challenge3)
//
//  Created by Kaua Trindade on 31/07/24.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        VStack{
            
            NavigationLink{
                SignInEmailView()
            } label:{
                Text("Sign In With Email")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
        //.navigationTitle("Sign In")
}

#Preview {
    AuthenticationView()
}
