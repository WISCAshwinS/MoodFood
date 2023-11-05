import SwiftUI

struct MainPageView: View {
    @State private var navigateToHappyView = false
    
    var body: some View {
        NavigationView{
            ZStack {
                Color(red: 52 / 255, green: 203 / 255, blue: 114 / 255)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    // Use a VStack to vertically stack your elements.
                    VStack {
                        
                        
                        
                        // Insert the logo image.
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 250, height: 250)
                        
                        VStack{
                            Text("How are you feeling?")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 52 / 255, green: 203 / 255, blue: 114 / 255))
                                .padding(.top, 20)
                        }
                        .padding(.horizontal, 15)

                        .padding(.bottom, 20)
                        .padding()
                        .background(Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
                                    
                                    //Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
                            .cornerRadius(25)
                            .shadow(
                                color: Color.black.opacity(0.5),
                                radius: 10,
                                x: 0, y: 10)
                        )
                        .padding(.top,15)
                    }
                    .padding(.horizontal, 25)
                    
                    
                    // Create a ScrollView for your buttons.
                    VStack{
                        
                        VStack(spacing: 20) {
                            // First button for 'Happy'.
                            NavigationLink(destination: HappyView()) {
                                Text("Happy/Content")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .frame(width: 325, height: 150)
                                    .background(Color(red: 255 / 255, green: 223 / 255, blue: 0 / 255))
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                            NavigationLink(destination: SadView()) {
                                Text("Sad/Down")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .frame(width: 325, height: 150)
                                    .background(Color(red: 135 / 255, green: 206 / 255, blue: 235 / 255))
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                            NavigationLink(destination: StressView()) {
                                Text("Stressed/Anxious")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .frame(width: 325, height: 150)
                                    .background(Color(red: 255 / 255, green: 192 / 255, blue: 203 / 255))
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                            NavigationLink(destination: EnergeticView()) {
                                Text("Energetic/Active")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .frame(width: 325, height: 150)
                                    .background(Color(red: 103 / 255, green: 58 / 255, blue: 183 / 255))
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                            NavigationLink(destination: EnergeticView()) {
                                Text("Tired/Exhausted")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .frame(width: 325, height: 150)
                                    .background(Color(red: 54 / 255, green: 69 / 255, blue: 79 / 255))
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                        }
                        .padding()
                    }
                    //.padding()
                    .background(Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
                                
                                //Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
                        .cornerRadius(25)
                        .shadow(
                            color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 0, y: 10)
                    )
                    .padding(.horizontal, 7)
                    .padding(.top,15)
                }
                Spacer() // Push everything to the top.
            }
        }
        
    }
}


struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
