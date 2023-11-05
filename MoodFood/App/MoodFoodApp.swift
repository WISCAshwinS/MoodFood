//
//  MoodFoodApp.swift
//  MoodFood
//
//  Created by Anmol Gulati on 11/4/23.
//




import SwiftUI
import Firebase
@main
struct MoodFoodApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
