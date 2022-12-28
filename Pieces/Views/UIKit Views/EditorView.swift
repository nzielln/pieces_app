//
//  TextEditor.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 1/29/22.
//

import SwiftUI

struct EditorView: UIViewRepresentable {
    @Binding var text: String
    @Binding var textStyle: UIFont.TextStyle
    @Binding var edit: String
    @Binding var image: UIImage

    @Binding var isEditing: Bool
    
    var placeholder = "Begin diary entry here"
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        
        textView.font = UIFont.preferredFont(forTextStyle: textStyle)
        textView.autocapitalizationType = .sentences
        textView.isSelectable = true
        textView.isUserInteractionEnabled = true
        textView.allowsEditingTextAttributes = true
        textView.adjustsFontForContentSizeCategory = true
        
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        if isEditing {
            uiView.textColor = UIColor.black
            uiView.text = text
        } else {
            
            uiView.text = placeholder
            uiView.textColor = UIColor.lightGray
            
        }
        
        if (edit == "bold") {
            let font = UIFont.boldSystemFont(ofSize: 14)
            let range = uiView.selectedRange
            let str = NSMutableAttributedString(attributedString: uiView.attributedText)
            let atr: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.red, ]
            str.addAttributes(atr, range: uiView.selectedRange)
            uiView.attributedText = str
            uiView.selectedRange = range
        } else if (edit == "image") {
            //let range = uiView.selectedRange
            let str = NSMutableAttributedString(attributedString: uiView.attributedText)
            let attachment = NSTextAttachment()
            attachment.image = image
            
            let prevWidth = attachment.image?.size.width ?? 0
            let scale = prevWidth / (uiView.frame.size.width - 10)
            attachment.image = UIImage(cgImage: attachment.image!.cgImage!, scale: scale, orientation: .up)
            let imgatr = NSAttributedString(attachment: attachment)
            str.append(imgatr)
            uiView.attributedText = str
            //let pos = uiView.endOfDocument
            //uiView.selectedTextRange = uiView.textRange(from: pos, to: pos)

        }
    }
    
    
    
    typealias UIViewType = UITextView

}
