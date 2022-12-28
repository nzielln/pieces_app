//
//  ContentView.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI

extension Color {
    static let dark = Color("dark")
    static let light = Color("light")
}

struct RoundTextField: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(Color.light)
            .cornerRadius(15)
            .frame(width: 200)
            .font(Font.custom("Lato-Regular", size: 16))
    }
}


struct PiecesView: View {
    @State private var diary: Diary = Diary()
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLogIn = true
    @State private var isShowingSignup = false
    @State private var isShowingProfile = false
    @State private var isShowingTheme = false
    
    var body: some View {
        ZStack {
            SixRings().position(x: 200, y: -130)
            
            if isLogIn {
                VStack {
                    Text("Welcome to Pieces.")
                        .foregroundColor(.light)
                        .padding()
                        .font(Font.custom("Lato-Bold", size: 18))
                    
                    VStack (alignment: .center) {
                        TextField("Username", text: $username).multilineTextAlignment(.center).textFieldStyle(RoundTextField()).foregroundColor(.dark).padding(.bottom, 10)
                        TextField("Password", text: $password).multilineTextAlignment(.center).textFieldStyle(RoundTextField()).foregroundColor(.dark).onSubmit {
        
                        }
                    }
                    
                    VStack {
                        Text("Or log in using:").padding(.top)
                            .foregroundColor(.light)
                            .font(Font.custom("Lato-Regular", size: 16))
                        Socials().padding()
                        HStack {
                            Text("New?").font(Font.custom("Lato-Regular", size: 16))
                            Text("Create a new account.").font(Font.custom("Lato-Bold", size: 16)).onTapGesture {
                                self.isLogIn = false
                                self.isShowingSignup = true
                            }
                        }
                    }.foregroundColor(.light).padding()
                }
            }
            
            if isShowingSignup {
                SignUp(isShowingSignup: $isShowingSignup, isShowingProfile: $isShowingProfile).transition(.slide).zIndex(1)
            }
            
            if isShowingProfile {
                UploadPicture(isShowingProfile: $isShowingProfile, isShowingTheme: $isShowingTheme).transition(.slide).zIndex(3)
            }
            
            if isShowingTheme {
                ChooseTheme(isShowingTheme: $isShowingTheme, isShowingProfile: $isShowingProfile).transition(.slide).zIndex(5)
            }
            
            SixRings().position(x: -50, y: 850)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.dark).accentColor(Color.light).navigationBarBackButtonHidden(true)
    }
}

struct PiecesView_Previews: PreviewProvider {
    static var user = User(name: "Sophie", profile: Image("profile"), theme: .light)
    static var previews: some View {
        PiecesView()
    }
}
