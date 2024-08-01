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
                Text ("Hello")
            } label:{
                Text("Sign In With Email")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .background(Color.blue)
                    .clipShape(10)
            }
            Spacer()
        }
    }
        .navigationTitle("Sign In")
}

#Preview {
    AuthenticationView()
}
