//
//  SettingsView.swift
//  FluidTechSports
//
//  Created by Anmol Gulati on 6/13/23.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State var termsOfService: Bool = false
    @State var privayPol: Bool = false
    @State var aboutFST: Bool = false
    @State var contactUs: Bool = false
    
    var body: some View {
        NavigationView {
            Button(action: {
                viewModel.signOut()
            }) {
                Text("Log Out")
                    .foregroundColor(.red)
            }
        }
        .navigationBarBackButtonHidden(true)
        
    }
    
}





struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

