//
//  UploadPicture.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI

struct UploadPicture: View {
    @State private var firstName = "First Name"
    @State private var profileImage = UIImage()
    @State private var showPicker = false
    
    @Binding var isShowingProfile: Bool
    @Binding var isShowingTheme: Bool
    
    var body: some View {
        VStack {
            Text("Upload a photo.")
                .foregroundColor(.light)
                .padding()
                .font(Font.custom("Lato-Regular", size: 18))
            
            
            ZStack {
                Circle().fill(Color.light).frame(width: 140, height: 140, alignment: .center)
                Button{
                    self.showPicker = true
                } label: {
                    Label("Add Photo", systemImage: "plus.circle").foregroundColor(Color.dark).labelStyle(.iconOnly).font(.system(size: 30)).background(Color.light).mask(Circle().frame(width: 29, height: 29))
                }.frame(width: 140, height: 140, alignment: .bottomTrailing)
                
            }.padding(.bottom, 40)
            TextField("First Name", text: $firstName).multilineTextAlignment(.center).textFieldStyle(RoundTextField()).foregroundColor(.dark).padding(.bottom, 45)
            
            Button{
                self.isShowingProfile = false
                self.isShowingTheme = true
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

struct UploadPicture_Previews: PreviewProvider {
    static var previews: some View {
        UploadPicture(isShowingProfile: .constant(true), isShowingTheme: .constant(false))
    }
}
