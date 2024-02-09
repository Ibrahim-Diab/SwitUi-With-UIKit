//
//  ViewControllerSwiftUi.swift
//  AttachUikitWithSwiftUi
//
//  Created by Diab on 01/01/2024.
//

import SwiftUI

struct ViewControllerSwiftUi: UIViewControllerRepresentable {
     @Binding var color:UIColor?
    
    func makeUIViewController(context: Context) -> ViewController {

        let vc = ViewController.create(delegate: context.coordinator)
        return vc
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {}
    

    func makeCoordinator() -> Coordinator {
        Coordinator(instance: self)
    }
    
    final class Coordinator:NSObject,PassColorDelegate{
        let instance :ViewControllerSwiftUi
        
        init(instance: ViewControllerSwiftUi) {
            self.instance = instance
        }
        func passColor(color: UIColor) {
            self.instance.color = color
        }
        
    }
    
    
}

#Preview {
    ViewControllerSwiftUi(color: .constant(.orange))
}
