import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State private var notificationEnabled = true
    @State private var darkModeEnabled = false
    @State private var isOn = false
    
    struct DietPreference: Identifiable {
        var id: String
        var isPreferred = false
    }
    
    @State var dietPreferences = [
    DietPreference(id: "Vegetarian", isPreferred: false),
    DietPreference(id: "Vegan", isPreferred: false),
    DietPreference(id: "Pescatarian", isPreferred: false),
    DietPreference(id: "No Beef", isPreferred: false),
    DietPreference(id: "No Pork", isPreferred: false)]
    
    var body: some View {
        
            NavigationView {
                    Form {
                        VStack {
                            Section() {
                                Image("sample_profile_pic")
                                    .clipShape(Circle())
                                    .frame(alignment: .center)
                                    .padding(.top)
                                Text("John Doe")
                                    .font(.largeTitle)
                                    .frame(alignment: .center)
                            }
                            
                            Spacer()
                            Section(header: Text("Notification Settings")) {
                                Toggle("Enable Notifications", isOn: $isOn)
                            }
                            
                            Spacer()
                            Section(header: Text("Food Preferences")) {
                                ForEach($dietPreferences) { $dietPreferences in
                                    Toggle(dietPreferences.id, isOn: $dietPreferences.isPreferred)
                                }
                            }
                            
                            Spacer()
                            NavigationLink {
                                ResetView()
                                    .navigationBarBackButtonHidden(true)
                            } label: {
                                Text("SIGN OUT")
                            }
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                                .padding(.bottom, 15)
                        }
                        .navigationBarTitle("Settings")
                        .padding(.horizontal)
                        .padding(.vertical)
                    }
                        }
                }
        }




struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

