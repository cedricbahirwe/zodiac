//
//  DetailView.swift
//  ZodiacUI
//
//  Created by Cedric Bahirwe on 10/12/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var resizeImage = false
    
    @Binding var goOnHomeScreen: Bool
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack {
                    HStack {
                        
                        Button(action: {
                            //                            self.goOnHomeScreen.toggle()
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                        }
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "list.dash")
                                .imageScale(.large)
                        }
                    }
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.top, 36)
                    
                    
                    VStack {
                        Image("taurus")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 120)
                            .foregroundColor(Color.yellow)
                        Text("Taurus")
                            .foregroundColor(Color.white)
                            .font(.system(size: 30, weight: .semibold))
                        
                        Button(action: {}) {
                            Text("Apr 20 - May 20")
                                .foregroundColor(Color.white)
                                .font(.system(size: 10, weight: .light))
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.gray, lineWidth: 1)
                            )
                        }
                        .padding(.top)
                        
                    }
                    Spacer()
                }
                .frame(width: geometry.size.width, height: geometry.size.height
                    / 2.4)
                    .background(Color(red: 0.06, green: -0.002, blue: 0.687))
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack(spacing: 20) {
                        Button(action: {}) {
                            Text("Today")
                                .foregroundColor(Color.white)
                                .font(.system(size: 12, weight: .regular))
                                .padding(.horizontal, 30)
                                .padding(.vertical, 13)
                                .background(Color(red: 1.002, green: 0.546, blue: 0.522))
                                .cornerRadius(10)
                        }
                        
                        Button(action: {}) {
                            Text("Tomorrow")
                                .foregroundColor(Color.black)
                                .font(.system(size: 12, weight: .regular))
                                .padding(.horizontal, 30)
                                .padding(.vertical, 13)
                                .background(Color.clear)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 0.6)
                            )
                        }
                        Button(action: {}) {
                            Text("Week")
                                .foregroundColor(Color.black)
                                .font(.system(size: 12, weight: .regular))
                                .padding(.horizontal, 30)
                                .padding(.vertical, 13)
                                .background(Color.clear)
                                .cornerRadius(10)
                                
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 0.6)
                            )
                        }
                        
                    }
                    .padding(.bottom)
                    
                    Text("Taurus love and health")
                        .foregroundColor(Color.black)
                        .font(.system(size: 23, weight: .semibold))
                        .padding(.vertical)
                        .padding(.top)
                    
                    HStack(spacing: 20){
                        Button(action: {}) {
                            Text("92% Love")
                                .foregroundColor(Color(red: 0.146, green: 0.343, blue: 0.961))
                                .font(.system(size: 14, weight: .regular))
                                .padding(.horizontal, 35)
                                .padding(.vertical, 13)
                                .cornerRadius(10)
                                
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 0.5)
                            )
                        }
                        
                        Button(action: {}) {
                            Text("56% health")
                                .foregroundColor(Color(red: 0.997, green: 0.445, blue: 0.219))
                                .font(.system(size: 14, weight: .regular))
                                .padding(.horizontal, 35)
                                .padding(.vertical, 13)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 0.5)
                            )
                        }
                    }
                    .padding(.vertical)
                    
                    VStack(spacing: 20) {
                        Text("General horoscope")
                            .foregroundColor(Color.black)
                            .font(.system(size: 22, weight: .semibold))
                        Text("Someone else's beliefs and advice may seem dubious to you, but you sould keep in mind that these people wish you well")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 40)
                        
                        
                    }
                    .padding(.vertical)
                    HStack(spacing: 15) {
                        Button(action: {}) {
                            Text("#Love")
                                .foregroundColor(Color(red: 0.146, green: 0.343, blue: 0.961))
                                .font(.system(size: 12, weight: .regular))
                                .padding(.horizontal, 30)
                                .padding(.vertical, 6)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.gray, lineWidth: 0.5)
                            )
                        }
                        
                        Button(action: {}) {
                            Text("#Health")
                                .foregroundColor(Color(red: 0.997, green: 0.445, blue: 0.219))
                                .font(.system(size: 12, weight: .regular))
                                .padding(.horizontal, 30)
                                .padding(.vertical, 6)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.gray, lineWidth: 0.5)
                            )
                        }
                        
                        Button(action: {}) {
                            Text("#Career")
                                .foregroundColor(Color(red: 0.997, green: 0.445, blue: 0.219))
                                .font(.system(size: 12, weight: .regular))
                                .padding(.horizontal, 30)
                                .padding(.vertical, 6)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.gray, lineWidth: 0.5)
                            )
                        }
                    }
                    .padding(.top)
                    .padding(.horizontal)
                }
            }
            .onAppear {
                withAnimation(Animation.spring().speed(0.7)) {
                    
                    self.resizeImage.toggle()
                }
            }
            
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(goOnHomeScreen: .constant(false))
    }
}
