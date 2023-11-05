//
//  HappyView.swift
//  MoodFood
//
//  Created by Anmol Gulati on 11/4/23.
//

import SwiftUI

struct HappyView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color(red: 52 / 255, green: 203 / 255, blue: 114 / 255)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack{
                        Text("Pick a Cuisine!")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 52 / 255, green: 203 / 255, blue: 114 / 255))
                            .padding(.top, 20)
                            
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)
                    .padding()
                    .background(Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
                                
                                //Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
                        .cornerRadius(25)
                        .shadow(
                            color: Color.black.opacity(0.2),
                            radius: 10,
                            x: 0, y: 10)
                    )
                    .padding(.top,15)
                    
                    
                    VStack{
                        
                        VStack(spacing: 20) {
                            // First button for 'Happy'.
                            NavigationLink(destination: HappyView()) {
                                Text("Indian")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .frame(width: 325, height: 150)
                                    .background(Color(red: 255 / 255, green: 223 / 255, blue: 0 / 255))
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                            NavigationLink(destination: SadView()) {
                                Text("Mexican")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .frame(width: 325, height: 150)
                                    .background(Color(red: 135 / 255, green: 206 / 255, blue: 235 / 255))
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                            NavigationLink(destination: StressView()) {
                                Text("Italian")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .frame(width: 325, height: 150)
                                    .background(Color(red: 255 / 255, green: 192 / 255, blue: 203 / 255))
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                            NavigationLink(destination: EnergeticView()) {
                                Text("Chinese")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .frame(width: 325, height: 150)
                                    .background(Color(red: 103 / 255, green: 58 / 255, blue: 183 / 255))
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                            }
                            NavigationLink(destination: EnergeticView()) {
                                Text("Japanese")
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


struct HappyView_Previews: PreviewProvider {
    static var previews: some View {
        HappyView()
    }
}
