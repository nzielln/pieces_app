//
//  TextEdit.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/24/22.
//

import SwiftUI

struct TextEdit: View {
    @State private var text = ""
    @State private var title = ""
    @State private var edit = ""
    @State private var textStyle = UIFont.TextStyle.body
    @State private var showPicker = false
    @State private var isEditing = false
    @State private var image = UIImage()
    var body: some View {
        ZStack {
            VStack {
                TextField("Title", text: $title).padding([.leading, .trailing]).font(Font.custom("Lato-Bold", size: 30))
                EditorView(text: $text, textStyle: $textStyle, edit: $edit, image: $image, isEditing: $isEditing).padding(.horizontal).onTapGesture {
                    isEditing = true
                }
            }
            
            
            VStack{
                
                Button {
                    
                } label: {
                    Label("Done", systemImage: "None")
                        .labelStyle(SmallButtonStyleDark()).padding(25)
                }
                
                HStack {
                    Button { self.edit = "bold"
                    } label: {
                        Label("Bold", systemImage: "bold").labelStyle(EditButtonStyle())
                    }
                    
                    Button {
                        print("Hello")
                    } label: {
                        Label("Italic", systemImage: "italic").labelStyle(EditButtonStyle())
                    }
                    
                    Button {
                        print("Hello")
                    } label: {
                        Label("Underline", systemImage: "underline").labelStyle(EditButtonStyle())
                    }
                    
                    Button {
                        print("Hello")
                    } label: {
                        Label("Strikethrough", systemImage: "strikethrough").labelStyle(EditButtonStyle())
                    }
                    
                    Button {
                        print("Hello")
                    } label: {
                        Label("Color", systemImage: "a.square.fill").labelStyle(EditButtonStyle())
                    }
                    
                    Button {
                        print("Hello")
                    } label: {
                        Label("Link", systemImage: "link").labelStyle(EditButtonStyle())
                    }
                    
                    Button {
                        self.showPicker = true
                    } label: {
                        Label("Image", systemImage: "photo").labelStyle(EditButtonStyle())
                    }
                }
            }.textSelection(.enabled).sheet(isPresented: $showPicker, onDismiss: {
                self.edit = "image"
            }) {
                ImagePicker(source: .photoLibrary, image: $image)
                
            }
        }
        
    }
}
struct TextEdit_Previews: PreviewProvider {
    static var previews: some View {
        TextEdit()
    }
}
