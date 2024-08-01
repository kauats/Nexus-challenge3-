//
//  SignInEmailView.swift
//  Nexus(challenge3)
//
//  Created by Kaua Trindade on 01/08/24.
//

import SwiftUI

final class SignInEmailViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
}

struct SignInEmailView: View {
    
    @StateObject private var viewModel = SignInEmailViewModel()
    
    var body: some View {
        VStack {
            TextField("Email... ", text: $viewModel.email )
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            SecureField("Password... ", text: $viewModel.email )
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            
        }
            .navigationTitle("Sign In With Email")
        }
}
   

#Preview {
    SignInEmailView()
}
