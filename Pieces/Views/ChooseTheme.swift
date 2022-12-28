//
//  ChooseThemeView.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI


struct ChooseTheme: View {
    @EnvironmentObject var diary: Diary
    @State private var theme: Theme = Theme.dark
    @Binding var isShowingTheme: Bool
    @Binding var isShowingProfile: Bool
    
    var body: some View {
        VStack {
            Text("One last step. Choose a theme.")
                .foregroundColor(.light)
                .padding(40)
                .font(Font.custom("Lato-Regular", size: 18))
            
            HStack {
                Button{
                    self.theme = Theme.light
                } label: {
                    Label("Light", systemImage: "None")
                        .labelStyle(.titleOnly)
                        .foregroundColor(Color.dark)
                        .padding().frame(width: 85, height: 85, alignment: .center)
                        .background(
                            Circle().fill(Color.light)
                        )
                    
                }
                
                Spacer()
                
                Button{
                    self.theme = Theme.dark
                } label: {
                    Label("Dark", systemImage: "None")
                        .labelStyle(.titleOnly)
                        .padding()
                        .frame(width: 85, height: 85, alignment: .center)
                        .background(
                            Circle().stroke(Color.light, lineWidth: 2)
                        ).foregroundColor(Color.light)
                    
                }
                
            }.padding([.leading, .trailing], 100).padding(.bottom, 65)
            
            HStack {
                
                Button{
                    self.theme = Theme.dark
                    self.isShowingTheme = false
                    self.isShowingProfile = true
                } label: {
                    Label("Back", systemImage: "None")
                        .labelStyle(SmallButtonStyleLightLine())
                    
                }
                
                Spacer()
                
                
                Button{
                    self.theme = Theme.dark
                } label: {
                    Label("Done", systemImage: "None")
                        .labelStyle(SmallButtonStyleLight())
            }
            
            
        }.padding([.leading, .trailing], 130)
        
    }
}
}

struct ChooseTheme_Previews: PreviewProvider {
    static var previews: some View {
        ChooseTheme(isShowingTheme: .constant(true), isShowingProfile: .constant(false)).environmentObject(Diary())
    }
}
