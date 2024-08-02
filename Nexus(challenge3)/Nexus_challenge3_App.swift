//
//  Nexus_challenge3_App.swift
//  Nexus(challenge3)
//
//  Created by Kaua Trindade on 30/07/24.
//
 
import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct Nexus_challenge3_App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                AuthenticationView()
            }
           
        }
        
    }
}
