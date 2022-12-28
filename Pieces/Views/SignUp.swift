//
//  SignUpView.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI

struct SignUp: View {
    @State private var username: String = "Username"
    @State private var password: String = "Password"
    @State private var repeatPassword: String = "Repeat Password"
    
    @Binding var isShowingSignup: Bool
    @Binding var isShowingProfile: Bool
    
    var body: some View {
        VStack {
            Text("Create a new account.")
                .foregroundColor(.light)
                .padding()
                .font(Font.custom("Lato-Regular", size: 18))
            VStack {
                TextField("Username", text: $username)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundTextField())
                    .foregroundColor(.dark)
                    .padding(.bottom, 10)
                
                TextField("Password", text: $password)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundTextField())
                    .foregroundColor(.dark)
                    .padding(.bottom, 10)
                
                TextField("Repeat Password", text: $repeatPassword)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundTextField())
                    .foregroundColor(.dark)
                
            }.padding(.bottom, 35)
            
            Button{
                self.isShowingSignup = false
                self.isShowingProfile = true
            } label: {
                Label("Continue", systemImage: "None")
                    .labelStyle(.titleOnly)
                    .padding(10)
                    .frame(width: 120, height: 40)
                    .background(
                        RoundedRectangle(cornerRadius: 15).stroke(Color.light, lineWidth: 2)
                    ).foregroundColor(Color.light)
                
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp(isShowingSignup: .constant(true), isShowingProfile: .constant(false))
    }
}
