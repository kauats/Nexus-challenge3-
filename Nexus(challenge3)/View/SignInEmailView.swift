//
//  SignInEmailView.swift
//  Nexus(challenge3)
//
//  Created by Kaua Trindade on 01/08/24.
//

import SwiftUI

@MainActor
final class SignInEmailViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else{
            print("No email or password found.")
            return
        }
        Task {
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print (returnedUserData)
            }catch{
                print("Error: \(error)")
            }
        }
        
    }
    
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
            Button {
                viewModel.signIn()
                
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
            .navigationTitle("Sign In With Email")
        }
}
   

#Preview {
    SignInEmailView()
}
