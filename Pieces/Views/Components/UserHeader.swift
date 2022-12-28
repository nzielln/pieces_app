//
//  UserHeader.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI

struct IconStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.icon
        }
        .font(.system(size: 28))
    }
}

struct UserHeader: View {
    @EnvironmentObject var diary: Diary
    @Binding var plusClicked: Bool

    var body: some View {
        let user = diary.user!
        let hour = Int(diary.time.getHour()) ?? 0
        return HStack (alignment: .top) {
            
            Label("Plus", systemImage: "calendar")
                .labelStyle(IconStyle())
                .foregroundColor(user.getTheme() == .dark ? Color.light : Color.dark)
                .padding(.trailing, 50)
        
        VStack {
            
            ProfilePicture()
            switch (hour) {
            case 0...11:
                Text("Good morning, " + user.name)
                    .font(Font.custom("Lato-Regular", size: 16))
                    .foregroundColor(user.getTheme() == .dark ? Color.light : Color.dark)
                    .padding([.top, .bottom], 15)
            case 12...17:
                Text("Good afternoon, " + user.name)
                    .font(Font.custom("Lato-Regular", size: 16))
                    .foregroundColor(user.getTheme() == .dark ? Color.light : Color.dark)
                    .padding([.top, .bottom], 15)
            default:
                Text("Good evening, " + user.name)
                    .font(Font.custom("Lato-Regular", size: 16))
                    .foregroundColor(user.getTheme() == .dark ? Color.light : Color.dark)
                    .padding([.top, .bottom], 15)
            }
            
            Button {} label: {
                Label("Plus", systemImage: "plus")
                .labelStyle(IconStyle())
                .foregroundColor(user.getTheme() == .dark ? Color.light : Color.dark)
                .simultaneousGesture(
                    DragGesture(minimumDistance: 0)
                        .onChanged( { _ in
                            self.plusClicked = true
                        })
                        .onEnded({ _ in
                            self.plusClicked = false
                            
                        })
                )
            }
            
        }.padding([.leading, .trailing], 10)
            
            VStack {
                
                Label("Change Theme", systemImage: "switch.2")
                    .labelStyle(IconStyle())
                    .foregroundColor(diary.user!.getTheme() == .dark ? Color.light : Color.dark)
                
                Label("Setting", systemImage: "gearshape")
                    .labelStyle(IconStyle())
                    .foregroundColor(diary.user!.getTheme() == .dark ? Color.light : Color.dark)
                    .padding(.top, 10)
                
            }.padding(.leading, 50)
        }.padding(.horizontal)
    }
}

struct UserHeader_Previews: PreviewProvider {
    static var previews: some View {
        UserHeader(plusClicked: .constant(false)).environmentObject(Diary())
    }
}
